# frozen_string_literal: true

def merge_sort(arr)
  size = arr.size
  return arr if size == 1

  merge(merge_sort(arr[0..size / 2 -1]), merge_sort(arr[(size / 2)..size - 1]))
end

# rubocop:disable Metrics/MethodLength
def merge(arr1, arr2)
  result = []
  until arr1.empty? || arr2.empty?
    if arr1[0] < arr2[0]
      result.push(arr1.shift)
      result.concat arr2 if arr1.empty?
    else
      result.push(arr2.shift)
      result.concat arr1 if arr2.empty?
    end
  end
  result
end

arr1 = [4, 2, 7, 3, 9, 7, 3]
arr2 = [8, 1, 5, 8, 2, 2, 6]
p merge_sort(arr1)
p merge_sort(arr2)

