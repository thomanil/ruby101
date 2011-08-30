require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    env_variable = lookup_env_variable("PATH")
    assert env_variable.include?("usr")
  end

  def test_bonus
    expected_error = `ruby env_lookup.rb`
    assert expected_error.include?("Usage:")

    lookup_result = `ruby env_lookup.rb "PATH"`
    assert lookup_result.include?("usr")
  end

end