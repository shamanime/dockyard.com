begin
  uri = URI.parse(ENV["REDISTOGO_URL"])
  REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
rescue URI::InvalidURIError
  REDIS = Redis.new
end
