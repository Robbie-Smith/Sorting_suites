require 'pry'
class Search
def search(num)
  found = false
  values = (1..10000).to_a.sample(1000).sort
  new_search = 0
  values.each do |v|
    m = values.fetch(500)
    break unless values.include?(num)
    if m.eql?(num)
      found = true
      puts "#{found}!"
    elsif new_search.even?
      new_search += 1
      found = true if values[0..500].include?(num)
      print found if found.eql?(true)
    elsif new_search.odd?
      new_search += 1
      found = true if values[500..1000].include?(num)
      print found if found.eql?(true)
    end
  end
end

end


Search.new.search(500)
