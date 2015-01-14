require 'minitest/autorun'
#require 'minitest/pride'
require './card'

#card

class TestCard  < MiniTest::Unit::TestCase
  def setup #this runs before each test
    @card = Card.new( 'hearts', 3)
  end

  def test_card_exists
    assert @card
  end