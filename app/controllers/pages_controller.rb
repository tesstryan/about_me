class PagesController < ApplicationController

def main
  @last_tweet = TwitterClient.new.last_tweet
  # @last_gram_image = InstagramClient.new.last_gram_image
end

