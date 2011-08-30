require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    File.open "test.xml", "w"
    recursive_xml_extension_to_txt "."
    assert File.exists? "test.txt"
    File.delete "test.txt"
  end

end