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
                # break
            elsif sorted_set_index == sorted_set.length-1
                sorted_set.insert(sorted_set_index+1,i)
                # break
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

# array.each do |i|
#   index = array.index(i)
#   insertion_value = array.delete_at(index)
#   while index > 0 && i < array[index -1]
#    index -= 1
#   end
#  sort.insert(index, i)



# (1..array.length-1).each do |i|
#  value_to_insert = array.delete_at(i)
#  insertion_index = i
#  while insertion_index > 0 && value_to_insert < array[insertion_index -1]
#    insertion_index -= 1
#  end
#  array.insert(insertion_index, value_to_insert)
# end
# array

# value_to_insert = array.delete_at(i)
#   index = array.index(value)
#   value = array.shift
#   sorted_index = sorted_set.length-1
#   if sorted_index > 0 && value < sorted_set[index -1]
#   #  sorted_index -= 1
#    sorted_set.insert(sorted_index, value)
#   else
#    sorted_set.insert(sorted_index, value)
#
#   end

# array.cycle(array.length) do |i|
#     insertion_index = array.index(i)
#     value_to_insert = array.delete_at(insertion_index)
#    while insertion_index > 0 && value_to_insert < sorted_set[insertion_index -1]
#      insertion_index -= 1
#    end
#    insertion_index - 1 if array.empty?
#    sorted_set.insert(insertion_index, value_to_insert)
#  end
#  sorted_set
