require 'pry'
class MergeSort

  def initialize
    @final = []
  end

  def sort(array)
    sort = []
    array.each_slice(2) do |value|
      value = value.rotate if value[0] > value[1]
      sort << value
    end
    merge(sort)
  end

  def merge(sort)
    final_index = 0
    sort.map.with_index do |(value), index|
      final_index = @final.length - 1
      @final = [sort[index].shift] if @final.empty?
      if (@final[final_index] <=> value).eql?(1)
        @final.insert(final_index,value)
        sort[index].shift
      elsif (@final[final_index] <=> value).eql?(-1)
        @final.insert(final_index + 1,value)
        sort[index].shift
      end
    end
    merge(sort) unless sort.last.empty?
  end

end
sorter = MergeSort.new
sorter.sort(["d", "b", "a", "c",'e','f'])
require 'pry'
class MergeSort

  def initialize
    @final = []
  end

  def sort(array)
    sort = []
    array.each_slice(2) do |value|
      value = value.rotate if value[0] > value[1]
      sort << value
    end
    merge(sort)
  end

  def merge(sort)
    final_index = 0
    sort.map.with_index do |(value), index|
      final_index = @final.length - 1
      @final = [sort[index].shift] if @final.empty?
      if (@final[final_index] <=> value).eql?(1)
        @final.insert(final_index,value)
        sort[index].shift
      elsif (@final[final_index] <=> value).eql?(-1)
        @final.insert(final_index + 1,value)
        sort[index].shift
      end
    end
    merge(sort) unless sort.last.empty?
  end

end
sorter = MergeSort.new
sorter.sort(["d", "b", "a", "c",'e','f'])
