
def count_word text, word
  text.lines.count { |line| line =~ /#{word}/ } 
end




def word_occurs_at text, word
  locations = []
  
  text.lines.each_with_index do |line, line_no| 
    char_pos = line =~ /#{word}/ 
    locations.push [char_pos, line_no+1]
  end
  
  return locations
end