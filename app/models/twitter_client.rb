class TwitterClient
  def initialize
    Twitter.configure do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.oauth_token        = ENV["ACCESS_TOKEN"]
      config.oauth_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end

    @client = Twitter::Client.new
  end

  def last_tweet
    @client.user_timeline.first.text
  end
end


