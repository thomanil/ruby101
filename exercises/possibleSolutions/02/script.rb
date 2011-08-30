
def repeat phrase, n
  phrases = []
  n.times { phrases.push(phrase) }
  return phrases.join(" ")
end

def repeat_bonus phrase, n
  phrases = []
  1.upto(n) { |n| phrases.push(phrase + " " + n.to_s) }
  return phrases.join(" ")
end