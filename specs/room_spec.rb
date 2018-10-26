require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < Minitest::Test

  def setup
    @song1_info = {
      artist: "Katy Perry",
      length: 4,
      lyrics: "Blah Blah, I kissed some girl"
    }
    @song2_info = {
      artist: "AC/DC",
      length: 5,
      lyrics: "Highway to Hell......!"
    }

    @room_songs = [@song1_info, @song2_info]
    @song1 = Song.new("I Kissed a Girl", @song1_info)
    @song2 = Song.new("Highway to Hell", @song2_info)
    @room = Room.new(3, "Blue", @room_songs)
  end

  def test_room_has_class
    assert_equal(Room, @room.class)
  end

  def test_can_get_room_cap
    assert_equal(3, @room.room_cap)
  end

  def test_get_room_name
    assert_equal("Blue", @room.room_name)
  end

end
