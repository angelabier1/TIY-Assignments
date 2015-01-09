require 'minitest/autorun'
#require 'minitest/pride'
require './black_jack'

class TestBlackJack < MiniTest::Unit::TestCase

  def setup #this runs before each test
    @black_jack = BlackJack.new
  end

  def test_black_jack_exists
    assert BlackJack.new
  end

  def test_deck_exists
    assert BlackJack.new.deck
  end

=begin
  def test_black_jack_deck_has_cards
    assert Game.new.grid.is_a? Array
    assert_equal Game.new.grid.length, 3
  end
=end
end