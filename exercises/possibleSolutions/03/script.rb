
def growth_spurt items
  items.map { |item| item*100 }
end


def a_lucky_few items, x, y
  items[x..y].map { |item| item*100 }
end