require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    assert_equal 3, add(1,2)
    assert_equal 2, subtract(3,1)
    assert_equal 6, multiply(3,2)
    assert_equal 2, divide(4,2)
  end
  
  def test_bonus
    assert_equal 3, add_mixed(1,2)
    assert_equal 2, subtract_mixed("3",1)
    assert_equal 6, multiply_mixed(3,"2")
    assert_equal 2, divide_mixed("4","2")
  end
  
end
