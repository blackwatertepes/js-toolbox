namespace :status do
  task get: :environment do
    url = URI.parse("")
    conn = Faraday.new :url => 'https://api.github.com', ssl: {verify: false} do |c|
      c.use Faraday::Request::UrlEncoded  # encode request params as "www-form-urlencoded"
      c.use Faraday::Response::Logger     # log request & response to STDOUT
      c.use Faraday::Adapter::NetHttp     # perform requests with Net::HTTP
    end

    Library.all.each do |library|
      lib_url = "/repos/#{library.author}/#{library.name}"
      response = conn.get lib_url
      data = JSON.parse(response.body)
      params = {watchers: data["watchers"], issues: data["open_issues"], forks: data["forks"]}
      
      response = conn.get "#{lib_url}/downloads"
      data = JSON.parse(response.body)
      params.merge({downloads: data.last["download_count"]}) if data.last
      
      Status.create(params.merge({library_id: library.id}))
    end
  end
end