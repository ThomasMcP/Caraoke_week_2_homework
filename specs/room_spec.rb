require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < Minitest::Test

  def setup
    @guest1 = Guest.new("Jimmy", "I Kissed a Girl", 50)
    @guest2 = Guest.new("Jimmy", "atom", 30)
    @guest3 = Guest.new("Jane", "Highway to Hell", 40)

    @song1_info = {
      artist: "Katy Perry",
      title: "I Kissed a Girl",
      length: 4,
      lyrics: "Blah Blah, I kissed some girl"
    }
    @song2_info = {
      artist: "AC/DC",
      title: "Highway to Hell",
      length: 5,
      lyrics: "Highway to Hell......!"
    }

    @room_songs = [@song1_info, @song2_info]
    @song1 = Song.new("I Kissed a Girl", @song1_info)
    @song2 = Song.new("Highway to Hell", @song2_info)
    @room = Room.new(4, "Blue", @room_songs)
  end

  def test_room_has_class
    assert_equal(Room, @room.class)
  end

  def test_can_get_room_cap
    assert_equal(4, @room.room_cap)
  end

  def test_get_room_name
    assert_equal("Blue", @room.room_name)
  end

  def test_can_get_guests_array
    assert_equal([], @room.guests)
  end

  def test_can_get_song_name
    assert_equal("I Kissed a Girl", @room.get_song_name("I Kissed a Girl"))
  end


  def test_book_guest_into_room
    @room.book_guest(@guest1)
    assert_equal(1, @room.guests.length)
  end

  def test_remove_guest_from_room
    @room.book_guest(@guest1)
    @room.remove_guest(@guest1)
    assert_equal(0,@room.guests.length)
  end

  def test_remove_all_guests_from_room
    @room.book_guest(@guest1)
    @room.book_guest(@guest2)
    @room.book_guest(@guest3)
    @room.remove_all_guests
    assert_equal(0, @room.guests.length)
  end

  # def test_room_has_guest_favourite_song
  #    @room.book_guest(@guest1)
  #    @room.
  #    assert_equal("I Kissed a Girl", )
  # end


end
