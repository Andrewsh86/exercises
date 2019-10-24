def quick_sort(arr)
  quick_sort_impl(arr, 0, arr.size - 1)
end

def quick_sort_impl(arr, first, last)
  if first < last
    p_index = partition(arr, first, last)
    quick_sort_impl(arr, first, p_index - 1)
    quick_sort_impl(arr, p_index + 1, last)
  end

  arr
end

def partition(arr, first, last)
  
  pivot = arr[last]
  p_index = first
  
  i = first
  while i < last
    if arr[i] <= pivot
      arr[i], arr[p_index] = arr[p_index], arr[i]
      p_index += 1
    end
    i += 1
  end
  
  arr[p_index], arr[last] = pivot, arr[p_index]
  return p_index
end



nums = (1..1_000).to_a.shuffle
puts quick_sort(nums)
