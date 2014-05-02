class InstagramClient

  attr_reader :last_gram_image

require 'open-uri'
require 'json'

def initialize

  user_feed_url = 'https://api.instagram.com/v1/users/20279689/media/recent/?access_token=#{ENV["INSTAGRAM_ACCESS"]}'
  string_data = open(URI.encode(user_feed_url)).read
  data = JSON.parse(string_data)

  last_gram = data["data"].first
  @last_gram_image = last_gram['images']['standard_resolution']['url']

end

end
