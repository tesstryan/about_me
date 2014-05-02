class InstagramClient

#   attr_reader :client

# Instagram.configure do |config|
#   config.client_id = "30f197151f2a48f4876d5dd92d9a08f2"
#   config.client_secret = "51ec74c08e9b4840a27c35bb1d3d95da"
# end

# @client = Instagram.client(:access_token => "20279689.30f1971.0c45d37de414427d8faf820fc551aaaa")

require 'open-uri'
require 'json'

user_feed_url = "https://api.instagram.com/v1/users/20279689/media/recent/?access_token=20279689.30f1971.0c45d37de414427d8faf820fc551aaaa"
string_data = open(URI.encode(user_feed_url)).read
data = JSON.parse(string_data)

end
