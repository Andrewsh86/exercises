class Foo
  attr_reader :name, :baz, :bar
  
  def initialize(name, bar, baz)
    @name = name
    @bar = bar
    @baz = baz
  end
  
  def to_s
    @name
  end
  
end

foos = [Foo.new("alice", 1 , 3), Foo.new("bill", 2, 2), Foo.new("chris", 3, 1)]

puts foos.sort_by { |foo| foo.baz }
puts "----------"
puts foos.sort_by { |foo| foo.bar }
