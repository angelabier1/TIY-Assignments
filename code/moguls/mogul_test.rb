require 'minitest/autorun'
require './mogul'

class MogulTest < MiniTest::Unit::TestCase

  #a mogul has a name and net worth
  def setup
    @mogul = Mogul.new("Steve Jobs", 20)
  end

  def test_mogul_has_name_and_net_worth
    assert_equal "Steve Jobs", @mogul.name
    assert_equal 20, @mogul.net_worth
  end

  def test_mogul_laughs_at_less_fortunate_mogul
    less_fortunate_mogul = Mogul.new("Peter", 1)
    assert_equal true, @mogul.laughs_at?(less_fortunate_mogul)
  end

  def test_mogul_does_not_laugh_at_richer_mogul
    richer_mogul = Mogul.new("Bill Gates(no relation)", 42)
    assert_equal false, @mogul.laughs_at?(richer_mogul)
  end
end
