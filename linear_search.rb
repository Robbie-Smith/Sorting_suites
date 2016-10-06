require 'pry'
def find_value(num)
  values = (1..1000).to_a.shuffle
  found = false
  values.each do |value|
    if value.eql?(num)
      found = true
      puts num
    end
  end
end

find_value(25)
