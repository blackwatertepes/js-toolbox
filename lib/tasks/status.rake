namespace :status do
  task test: :environment do
    conn = establish_connection
    
    library = Library.all.sample
    create_status(library, conn)
  end
  
  task all: :environment do
    conn = establish_connection
    
    Category.all.each do |category|
      category.libraries.each do |library|
        create_status(library, conn)
      end
    end
  end
end

desc "Pings PING_URL to keep a dyno alive"
task :dyno_ping do
  require "net/http"

  uri = URI('http://js-toolbox.org')
  Net::HTTP.get_response(uri)
end

def establish_connection
  url = URI.parse("")
  conn = Faraday.new :url => 'https://api.github.com', ssl: {verify: false} do |c|
    c.use Faraday::Request::UrlEncoded  # encode request params as "www-form-urlencoded"
    c.use Faraday::Response::Logger     # log request & response to STDOUT
    c.use Faraday::Adapter::NetHttp     # perform requests with Net::HTTP
  end
  return conn
end

def create_status(library, conn)
  lib_url = "/repos/#{library.author}/#{library.name}"
  response = conn.get lib_url
  data = JSON.parse(response.body)

  pushed = library.pushed_at && library.pushed_at != data["pushed_at"] ? true : false
  params = {watchers: data["watchers"], issues: data["open_issues"], forks: data["forks"], library_id: library.id, pushed: pushed}
   
  library.update_attribute(:pushed_at, data["pushed_at"])
  Status.create(params)
end