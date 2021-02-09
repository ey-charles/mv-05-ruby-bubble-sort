# frozen_string_literal: true

def bubble_sort(arr)
  swapped = true

  while swapped == true
    arr.each_with_index do |n, i|
      swapped = false

      unless arr[i+1].nil?
        if arr[i+1] > arr[i]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = true
        end
      end
    end
  end

  return arr
end

my_array = [5, 4, 2, 3, 8, 7]

# p my_array[6].nil?

p bubble_sort(my_array)
