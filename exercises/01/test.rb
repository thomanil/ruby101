require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_arithmetics
    assert_equal 3, add(1,2)
    # ...
  end
  
end
