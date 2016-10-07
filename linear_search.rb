require 'pry'
def find_value(num)
  values = (1..1000).to_a.shuffle
  found = false
  values.each do |value|
    found = true if value.eql?(num)
  end
  puts "num" if found.eql?(true)
end

find_value(25)
