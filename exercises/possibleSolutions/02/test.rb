require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    assert_equal "Hello Hello", repeat("Hello",2)
  end
  
  def test_bonus
     assert_equal "Hello 1 Hello 2 Hello 3", repeat_bonus("Hello",3)
  end
  
end
