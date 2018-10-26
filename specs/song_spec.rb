require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < Minitest::Test

  def setup
    @song_info = {
      artist: "Queen",
      length: 3,
      lyrics: "I've paid my dues
Time after time
I've done my sentence
But committed no crime
And bad mistakes
I've made a few
I've had my share of sand kicked in my face
But I've come through
We are the champions, my friends
And we'll keep on fighting 'til the end
We are the champions
We are the champions
No time for losers
'Cause we are the champions of the world
I've taken my bows
And my curtain calls
You brought me fame and fortune and everything that goes with it
I thank you all
But it's been no bed of roses
No pleasure cruise
I consider it a challenge before the whole human race
And I ain't gonna lose
We are the champions, my friends
And we'll keep on fighting 'til the end
We are the champions
We are the champions
No time for losers
'Cause we are the champions of the world
We are the champions, my friends
And we'll keep on fighting 'til the end
We are the champions
We are the champions
No time for losers
'Cause we are the champions"
    }

    @song_info_temp_variable = @song_info

    @song = Song.new("We are the Champions", @song_info_temp_variable)
  end

  def test_song_has_class
    assert_equal(Song, @song.class)
  end

  def test_song_has_name
    assert_equal("We are the Champions", @song.name)
  end

  def test_get_song_info
    assert_equal(@song_info_temp_variable, @song.song_info)
  end

  def test_song_has_lyrics
    assert_equal("I've paid my dues
Time after time
I've done my sentence
But committed no crime
And bad mistakes
I've made a few
I've had my share of sand kicked in my face
But I've come through
We are the champions, my friends
And we'll keep on fighting 'til the end
We are the champions
We are the champions
No time for losers
'Cause we are the champions of the world
I've taken my bows
And my curtain calls
You brought me fame and fortune and everything that goes with it
I thank you all
But it's been no bed of roses
No pleasure cruise
I consider it a challenge before the whole human race
And I ain't gonna lose
We are the champions, my friends
And we'll keep on fighting 'til the end
We are the champions
We are the champions
No time for losers
'Cause we are the champions of the world
We are the champions, my friends
And we'll keep on fighting 'til the end
We are the champions
We are the champions
No time for losers
'Cause we are the champions", @song.lyrics)

  end
end