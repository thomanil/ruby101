require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    expected_hash = { :firstname => "Tony", :lastname => "Soprano" }
    assert_equal expected_hash, to_hash([:firstname, :lastname], ["Tony", "Soprano"])
  end

  def test_bonus
    expected_keys = [:firstname, :lastname]
    expected_values = ["Tony", "Soprano"]
    actual_keys, actual_values = to_array({ :firstname => "Tony", :lastname => "Soprano" })
    assert_equal expected_keys, actual_keys 
    assert_equal expected_values, actual_values
  end

end
