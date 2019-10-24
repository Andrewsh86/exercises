def find_unique_with_sort(nums)
  nums.sort.each_slice(2) do |num1, num2|
    return num1 if num1 != num2
  end
end


def find_unique_with_hash(nums)
  found_nums = {}
  
  nums.each do |num|
    if found_nums[num]
      found_nums.delete(num)
    else
      found_nums[num] = true
    end
  end
  return found_nums.keys.first
end

def find_unique_with_xor(nums)
  unpaired = nums.pop
  nums.reduce(unpaired) { |acc, num| acc ^ num}
end

require 'benchmark'
 
nums = (1..50_000_000).to_a
nums = nums.concat(nums).push(50_000_001)

time = Benchmark.realtime { puts find_unique_with_sort(nums) }

puts "Completed with sort in #{time} seconds"

time = Benchmark.realtime { puts find_unique_with_hash(nums) }

puts "Completed with hash in #{time} seconds"

time = Benchmark.realtime { puts find_unique_with_xor(nums) }
puts "Completed with xor in #{time} seconds"
