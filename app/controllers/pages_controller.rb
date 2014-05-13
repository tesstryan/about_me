class PagesController < ApplicationController
  def main
    @last_tweet = TwitterClient.new.last_tweet
    @rdio_client = RdioClient.new
    @last_song = "#{@rdio_client.song_name} by #{@rdio_client.artist_name}"
    @last_gram_image = InstagramClient.new.last_gram_image
    @current_temperature = Weather.new.get_current_temperature
  end
end

