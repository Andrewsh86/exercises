def bubble_sort(nums)
  swapped = true
  
  while swapped
    swapped = false
    nums.each_with_index do | num, index |
      if index < nums.length - 1 && num > nums[index + 1]
        nums[index], nums[index + 1] = nums[index + 1], nums[index]
        swapped = true
      end
    end
  end
  
  return nums
end

nums = (1..100).to_a.shuffle

puts bubble_sort(nums)
