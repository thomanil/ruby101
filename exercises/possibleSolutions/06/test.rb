require "script.rb"
require "test/unit"

class TestTheScript < Test::Unit::TestCase

  def test_basic
    path = "index.html"
    create_html_file path
    assert File.exists?(path)
    File.open path, "r" do |file|
      lines = file.readlines
      lines.any? { |line| line.include? "html"}
    end
    
    File.delete path
  end

  def test_bonus
    path = "index_bonus.html"
    create_lorem_ipsum_html_file path, 3
    assert File.exists?(path)
    File.open path, "r" do |file|
      lines = file.readlines
      paragraph_no = lines.count { |line| line.include? "<p>lorem"}
      assert paragraph_no = 3
    end
    File.delete path
  end

end
