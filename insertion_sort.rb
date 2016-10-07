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
        break if array.empty?
    end
  end

end

sorter = InsertionSort.new
sorter.sort(["a", "c", "z", "f", "e", "b", "d"])
