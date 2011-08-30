require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    current_path = `pwd`
    assert_equal current_path, execute_in_shell("pwd")
  end

  def test_bonus
    expected_files = "exercise09.txt\nscript.rb\ntest.rb\n" 
    assert_equal expected_files, list_dir(".")
  end

end