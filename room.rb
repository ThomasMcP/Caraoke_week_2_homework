class Room

  attr_reader :room_cap, :room_name, :room_songs, :guests

  def initialize(room_cap, room_name, room_songs)
    @room_cap = room_cap
    @room_name = room_name
    @room_songs = room_songs
    @guests = []
  end

  def get_song_name(song_title)
    for song in @room_songs
      if song[:title] == song_title
        p "Playing #{song_title}"
      else p "not found"
      end
    end
  end

  def book_guest(guest)
    if @guests.length <= @room_cap
    @guests << guest
    else
      p 'room full'
    end
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def remove_all_guests
    @guests.clear
  end



end
