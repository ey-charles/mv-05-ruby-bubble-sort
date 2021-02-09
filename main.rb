# frozen_string_literal: true

def bubble_sort(arr)
  swapped = true

  while swapped == true
    arr.each_with_index do |n, i|
      next if arr[i + 1].nil?

      swapped = false

      if n > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end

  arr
end

def bubble_sort_by(arr)
  swapped = true

  while swapped == true
    arr.each_index do |i|
      next if arr[i + 1].nil?

      swapped = false

      j = yield(arr[i], arr[i + 1])

      if j.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end
  p arr
end

my_array = [5, 4, 2, 3, 8, 7]

bubble_sort(my_array)

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
