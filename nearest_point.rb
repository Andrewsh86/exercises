class Point
  attr_reader :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def to_s
    "(#{@x}, #{@y})"
  end
  
  def find_nearest(points, k = 1)
    points.sort_by { |point| calc_distance(point) }.first(k)
  end
  
  private
    
  def calc_distance(point)
    delta_x = (@x - point.x).abs
    delta_y = (@y - point.y).abs
    delta_x + delta_y
  end
end

center_point = Point.new(1, 2)

points = [Point.new(0, 0), Point.new(5, 4), Point.new(3, 1)]

puts center_point.find_nearest(points, 2)
