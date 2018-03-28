require 'pry'

class Triangle
  attr_accessor :type, :sides

  def initialize(a,b,c)
    self.sides = [a,b,c]
    binding.pry
    self.kind
  end

  def kind
    if sides.any? {|side| side <= 0} || sides[0] + sides[1] < sides[2]
        raise TriangleError
    else
      if sides.select {|side| side == sides[0]}.count > 2
        @type = :equilateral
      elsif sides.select {|side| side == sides[0]}.count > 1 || sides.select {|side| side == sides[1]}.count > 1
        @type = :isosceles
      else
        @type = :scalene
      end
    end
  end


  class TriangleError < StandardError

  end

end

new_triangle = Triangle.new(0,0,0)
