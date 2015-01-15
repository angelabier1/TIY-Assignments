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
    wolfie = Wolf.new('wolfie', 12)
    wolfram = Wolf.new('wolfram', 34)
    @bob = Wolf.new('bob', 56)
    @wolves = [wolfie, wolfram, @bob]
    @wolfpack = Wolfpack.new(@wolves)
  end

  def test_wolfpack_exists
    assert @wolfpack
  end

  def test_more_than_one_wolf
    assert @wolfpack.more_than_one_wolf
  end

end