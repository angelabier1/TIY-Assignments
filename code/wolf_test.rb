require 'minitest/autorun'
#require 'minitest/pride'
require './wolf'

#Wolf has a name and age
#Wolf can join a pack
#Wolf can howl
#wolf can how louder if older than 3 than if it's younger

class TestWolf < MiniTest::Unit::TestCase

  def setup #this runs before each test
    @wolf = Wolf.new('wolfie', 23)
    @wolves = []
  end

  def test_wolf_exists
    assert @wolf
  end

  def test_wolf_can_howl
  assert_equal "howwwlllll!", @wolf.howl
  end

  def test_wolf_can_howl_louder
    assert_equal "HOWWWWWWLLLLLL!", @wolf.howl_louder
  end

  def test_wolf_is_dominant_to
    wolfram = Wolf.new('wolfram', 45)
    assert_equal false, @wolf.dominant_to(wolfram)
  end

  def test_wolf_is_submissive_to
    wolfram = Wolf.new('wolfram', 45)
    assert_equal true, @wolf.submissive_to(wolfram)
  end

  def test_wolf_can_join_pack
    assert_equal ['wolfie'], @wolf.join_pack
  end


end