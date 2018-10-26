class Room

  attr_reader :room_cap, :room_name, :room_songs

  def initialize(room_cap, room_name, room_songs)
    @room_cap = room_cap
    @room_name = room_name
    @room_songs = room_songs
  end

end
