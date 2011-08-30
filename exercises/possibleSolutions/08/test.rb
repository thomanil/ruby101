require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  SEARCHED_TEXT = <<TEXT
This is a line
This is another line
Third line coming up
TEXT

  def test_basic
    assert_equal 3, count_word(SEARCHED_TEXT, "line")
  end

  def test_bonus
    expected_locations = [[10,1], [16,2], [6,3]]
    assert_equal expected_locations, word_occurs_at(SEARCHED_TEXT, "line") 
  end

end