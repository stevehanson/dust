# by default will connect to localhost
if Rails.env.production? || ENV["REDISCLOUD_URL"]
  Redis.current = Redis.new(url: ENV.fetch("REDISCLOUD_URL"))
end
