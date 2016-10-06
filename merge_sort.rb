require 'pry'
class MergeSort
  def sort(array)
    sort = []
    array.each_slice(2) do |value|
      value = value.rotate if value[0] > value[1]
      sort << value
    end
    merge(sort)
  end

  def merge(sort)
    binding.pry
    sorted = [sort.delete_at([0][0])]
    sorted.flatten!
    sort.each do |value|
      value.each_with_index do |element,index|
        sorted_index = 0
        while sorted_index < element.length
          if element <= sorted[sorted_index]
              sorted.insert(sorted_index,element)
              # sort.delete_at(index)
              break
          elsif sorted_index == element.length - 1
              sorted.insert(index+1,element)
              # sort.delete_at(index)
              break
          end
        end
          sorted_index+=1
          # index += 1 unless sort[index + 1].nil?
          # break if sorted.include?(value[index])
          # sort
      end
    end
  end
end


sorter = MergeSort.new
sorter.sort(["d", "b", "a", "c","f","e"])


# if array.count == sort.flatten.count
#   sort = sort.transpose
#   sort.map! do |a|
#     a.rotate
#   end
#   sort.flatten!
# end
