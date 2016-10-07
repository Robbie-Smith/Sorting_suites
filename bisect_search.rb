require 'pry'
class Search

  def split(array,num)
    array = array.sort
    middle_index = (array.length-1) / 2
    return "Found + #{num}." if array[middle_index].eql?(num)
    first_half = array[0..middle_index]
    second_half = array[middle_index..array.length-1]
    search(first_half,second_half,middle_index,num)
  end

  def search(first_half,second_half,middle_index,num)
    search_set = [first_half, second_half]
    found = false
    search_set.each_with_index do |value,index|
      found = true if value.include?(num)
      break if found.eql?(true)
    end
    puts "Found #{num}." if found.eql?(true)
  end
end


values = (1..1000).to_a.sample(1000)
Search.new.split(values,501)
