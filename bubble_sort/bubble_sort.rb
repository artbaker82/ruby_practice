#bubble sort algorithm

def bubble_sort(array)
  array.length.times do
    array.each_index do |index| 
      unless array[index + 1] == nil
        if array[index] > array[index + 1]
          temp = array[index]
          array[index] = array[index + 1]
          array[index + 1] = temp 
        end
      end
    end
  end
  array
end

bubble_sort([4,3,78,2,0,2])