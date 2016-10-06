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
    final = [sort.delete_at([0][0])]
    final.flatten!
    binding.pry
    sort.each_with_index do |value,index|
      (final.length).times do |v|
        index = 0 if value[index].nil?
        final_index = 0
        while final_index < final.length
            if value[index] <= final[final_index]
                final.insert(final_index,value[index])
                value.delete_at(index)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,value[index])
                value.delete_at(index)
                break
            end
            final_index += 1
        end
        break if sort[0].empty? && sort[1].empty?
      end
    end
  end
end


sorter = MergeSort.new
sorter.sort(["d", "b", "a", "c","f","e"])
