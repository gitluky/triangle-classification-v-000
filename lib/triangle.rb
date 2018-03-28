require 'pry'

class Triangle
  attr_accessor :type, :sides

  def initialize(a,b,c)
    self.sides = [a,b,c]
    self.kind
  end

  def kind
    if sides.any? {|side| side <= 0} || sides[0] + sides[1] < sides[2]
      begin
        raise TriangleError
      rescue TriangleError => error
        error.message
      end
    else
      binding.pry
      if sides.select {|side| side == side[0]}.count > 2
        @type = :equilateral
      elsif sides.select {|side| side == sides[0] || side == sides[1]}.count > 1
        @type = :isosceles
      else
        @type = :scalene
      end
    end
  end


  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end

end

new_triangle = Triangle.new(2,2,2)
