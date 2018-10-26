class Guest

  attr_reader :name, :fav_song, :balance

  def initialize(name, fav_song, balance)
    @name = name
    @fav_song = fav_song
    @balance = balance
  end
end
