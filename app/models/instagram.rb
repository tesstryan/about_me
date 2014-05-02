class InstagramClient

require 'open-uri'
require 'json'

user_feed_url = "https://api.instagram.com/v1/users/20279689/media/recent/?access_token=#{ENV['INSTAGRAM_ACCESS']}"
string_data = open(URI.encode(user_feed_url)).read
data = JSON.parse(string_data)

end
