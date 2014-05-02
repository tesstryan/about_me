class RdioClient
  attr_reader :song_name, :artist_name

  def initialize
    @rdio = RdioApi.new(
      :consumer_key => ENV['RDIO_CONSUMER_KEY'],
      :consumer_secret => ENV['RDIO_CONSUMER_SECRET']
    )

    @my_rdio_id = @rdio.findUser(email: "tesstryan@gmail.com")["key"]
    @song_name = @rdio.get(keys: @my_rdio_id, extras: "lastSongPlayed")["#{@my_rdio_id}"]["lastSongPlayed"]["name"]
    @artist_name = @rdio.get(keys: @my_rdio_id, extras: "lastSongPlayed")["#{@my_rdio_id}"]["lastSongPlayed"]["artist"]
  end
end
