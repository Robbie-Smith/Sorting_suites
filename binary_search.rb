require 'pry'
class BisectSearch

  def initialize(value)
    @value = value
  end

  def binary_search(array)
    middle = array[(array.length-1)/2]
    middle_index = array.index(middle)
    if middle.eql?(@value)
      return puts "Found #{middle}"
    elsif @value < middle
      binary_search(array=array[0..middle_index])
    elsif @value > middle
      binary_search(array=array[middle_index..array[-1]])
    end
  end

end
values = (1..1000).to_a.sort
search = BisectSearch.new(600)
search.binary_search(values)
