namespace :status do
  task frameworks_front: :environment do
    conn = establish_connection

    Category.find_by_name("frameworks").libraries.each do |library|
      create_library(library, conn)
    end
  end
  
  task utilities: :environment do
    conn = establish_connection
    
    Category.find_by_name("utilities").libraries.each do |library|
      create_library(library, conn)
    end
  end
  
  task frameworks_full: :environment do
    conn = establish_connection
    
    Category.find_by_name("frameworks_full").libraries.each do |library|
      create_library(library, conn)
    end
  end
  
  task toolkits: :environment do
    conn = establish_connection
    
    Category.find_by_name("toolkits").libraries.each do |library|
      create_library(library, conn)
    end
  end
  
  task forms: :environment do
    conn = establish_connection
    
    Category.find_by_name("form_validation").libraries.each do |library|
      create_library(library, conn)
    end
  end
  
  task charts: :environment do
    conn = establish_connection
    
    Category.find_by_name("charting").libraries.each do |library|
      create_library(library, conn)
    end
  end
  
  task all: [:frameworks_front, :utilities, :frameworks_full, :toolkits, :forms, :charts]
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

def create_library(library, conn)
  lib_url = "/repos/#{library.author}/#{library.name}"
  response = conn.get lib_url
  data = JSON.parse(response.body)
  params = {watchers: data["watchers"], issues: data["open_issues"], forks: data["forks"]}
   
  # response = conn.get "#{lib_url}/downloads"
  # data = JSON.parse(response.body)
  # params.merge({downloads: data.last["download_count"]}) if data.last
  
  Status.create(params.merge({library_id: library.id}))
end