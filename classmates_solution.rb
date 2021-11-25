def merge_sort2(array)
  len = array.length
  if len < 2
    array
  else
    left, right = merge_sort2(array.take(len/2)), merge_sort2(array.drop(len/2))

    l, r, i = 0, 0, 0 # Indicies for left, right, index
    while l < left.length && r < right.length do
      if left[l] < right[r]
        array[i] = left[l]
        l += 1
      else
        array[i] = right[r]
        r += 1
      end
      i += 1
    end

    # Consume remaining digits not used above, only one of these loops should run.
    while l < left.length do
      array[i] = left[l]
      l += 1
      i += 1
    end
    
    while r < right.length do
      array[i] = right[r]
      r += 1
      i += 1
    end
    
    array
  end
end