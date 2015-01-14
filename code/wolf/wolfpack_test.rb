require 'minitest/autorun'
#require 'minitest/pride'
require './wolfpack'
require './wolf'

# Wolfpack is a group of wolves
# Oldest wolf is the leader

# If a wolf joins a pack and becomes leader, the pack throws out the former leader.
# A wolfpack can take down different sized things depending on how big it is.
  # A pack of 2 wolves can hunt a gazelle
  # A pack of 5 wolves can hunt a water buffalo
  # A pack of 30 wolves can eat a rhinoceros

class TestWolfpack < MiniTest::Unit::TestCase
  def setup
    @wolfpack = Wolfpack.new
  end

  def test_wolfpack_exists
    assert @wolfpack
  end

  def test_more_than_one_wolf
    assert_equal true, @wolfpack.wolves
  end

end