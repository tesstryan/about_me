class PagesController < ApplicationController

def main
  @last_tweet = TwitterClient.new.last_tweet
end

end
