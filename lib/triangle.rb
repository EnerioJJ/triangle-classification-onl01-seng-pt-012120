require_relative '../lib/triangle'

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    if x == y && y == z && z == x
      return :equilateral
    else if x == y && y == x but y != z
      return :isosceles
    else 
      return :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end
