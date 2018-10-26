require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < Minitest::Test

    def setup
      @guest = Guest.new("Thomas", "I want to break free", 30)
    end

    def test_guest_has_class
      expected = Guest
      actual = @guest.class()
      assert_equal(expected, actual)
    end

    def test_get_guest_name
      assert_equal("Thomas", @guest.name)
    end

    def test_guest_has_favourite_song
      assert_equal("I want to break free", @guest.fav_song)
    end

    def test_get_customer_balance
      assert_equal(30, @guest.balance)
    end
end
