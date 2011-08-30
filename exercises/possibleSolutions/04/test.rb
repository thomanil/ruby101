require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    lines = create_dummy_text(5, 3)
    assert_equal 3, lines.count
    lines.each { |line| assert_equal 5, line.length }
  end

  def test_bonus
    lines = create_dummy_text_bonus(30, 300, ["jabba", "dabba", "doo"])
    assert_equal 300, lines.count
    lines.each { |line| assert_equal 30, line.length }
  end

end
