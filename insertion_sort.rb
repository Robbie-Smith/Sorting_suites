require 'pry'

class InsertionSort

  def sort(array)
    sorted_set = [array.shift]
    array.cycle(array.length-1) do |element|
      sorted_set_index = 0
      while sorted_set[sorted_set_index] < element
        sorted_set_index += 1
        break if sorted_set[sorted_set_index].nil?
      end
      sorted_set.insert(sorted_set_index,array.delete(element))
    end
    print sorted_set
  end
end

array = (1..25).to_a.shuffle
InsertionSort.new.sort(array)
