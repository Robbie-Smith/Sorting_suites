require 'pry'
class LinearSearch
  def find_value(num)
    values = (1..1000).to_a.shuffle
    found = false
    values.each {|value| found = true if value.eql?(num)}
    puts "num" if found.eql?(true)
  end
end
