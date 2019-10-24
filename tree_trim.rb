class Tree
  attr_accessor :left, :right
  
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
  
  def trim!
    left_value = left.nil? ? 0 : left.trim!
    right_value = right.nil? ? 0 : right.trim!
    
    @left = nil if left_value == 0
    @right = nil if right_value == 0
    
    return [@value, left_value, right_value].max
  end
  
  def to_s
    left_display = @left.nil? ? "" : "(left: #{@left})"
    right_display = @right.nil? ? "" : "(right: #{(@right)})"
    "#{@value} #{left_display}#{right_display}"
  end
  
end


root = Tree.new(1)
root.right = Tree.new(0)
root.left  = Tree.new(1)

root.right.right = Tree.new(0)
root.right.left = Tree.new(1)

root.left.left = Tree.new(1)
root.left.right = Tree.new(1)

puts root

root.trim!

puts root


#      1
#   1    0
# 1  1  1  0 
