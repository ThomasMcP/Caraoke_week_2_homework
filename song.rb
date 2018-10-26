class Song

  attr_reader :name, :lyrics, :song_info

  def initialize(name, song_info)
    @name = name
    @song_info = song_info
    @lyrics = song_info[:lyrics]
  end
end
