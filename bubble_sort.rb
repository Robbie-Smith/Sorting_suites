require 'pry'
class BubbleSort

  def sort(array)
    array.each_index do |index|
      index = 0 if array[index+1].nil?
      while array[index] > array[index + 1]
        array[index + 1], array[index] = array[index], array[index + 1]
        sorted = false
      end
      sort(array) if sorted.eql?(false)
    end
  end

end

sorter = BubbleSort.new
sorter.sort(['a','g','f','b','h','c','e','d','a'])
