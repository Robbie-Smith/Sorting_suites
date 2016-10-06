require 'pry'

class InsertionSort
  def sort(array)
    binding.pry
    sorted_set = [array.shift]
    array.cycle(array.length-1) do |i|
      sorted_set_index = 0
      index = array.index(i)
        while sorted_set_index < sorted_set.length
            if i <= sorted_set[sorted_set_index]
                sorted_set.insert(sorted_set_index,i)
                array.delete_at(index)
                break
            elsif sorted_set_index == sorted_set.length-1
                sorted_set.insert(sorted_set_index+1,i)
                break
                array.delete_at(index)
            end
            sorted_set_index+=1
            break if sorted_set.include?(i)
        end
    end
  end

end

sorter = InsertionSort.new
sorter.sort(["a", "c", "z", "f", "e", "b", "d"])
