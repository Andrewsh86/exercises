def merge_sort(nums)
  return nums if nums.size <= 1
  
  half_size = (nums.size / 2).round
  
  left_nums = nums.take(half_size)
  right_nums = nums.drop(half_size)
  
  sorted_left_nums = merge_sort(left_nums)
  sorted_right_nums = merge_sort(right_nums)
  
  merge(sorted_left_nums, sorted_right_nums)
end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?
  
  smallest = left.first <= right.first ? left.shift : right.shift
  
  [smallest].concat(merge(left, right))
end




nums = (1..1_000).to_a.shuffle
puts merge_sort(nums)
