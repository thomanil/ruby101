require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    assert_equal [200,300,500,800,200,3300], growth_spurt([2,3,5,8,2,33]) 
  end

  def test_bonus
    assert_equal [500,800,200], a_lucky_few([2,3,5,8,2,33], 2, 4) 
  end

end
