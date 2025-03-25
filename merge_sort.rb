# frozen_string_literal: true

def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left_side = merge_sort(array[0...mid])
  right_side = merge_sort(array[mid..])

  merge(left_side, right_side)
end

def merge(left, right)
  sorted_array = []

  until left.empty? || right.empty?
    sorted_array << if left.first <= right.first
                      left.shift
                    else
                      right.shift
                    end
  end
  sorted_array + left + right
end

p merge_sort([5, 3, 8, 6, 2, 7, 4, 1])

arr1 = Array.new(20) { rand(1..100) }
arr2 = Array.new(50) { rand(-100..100) } 
arr3 = Array.new(100) { rand(1..1000) }

p merge_sort(arr1)
p merge_sort(arr2)
p merge_sort(arr3)
p merge_sort ([])
p merge_sort([1, 3, 2, 3, 1, 3, 2, 1])
p merge_sort([10])