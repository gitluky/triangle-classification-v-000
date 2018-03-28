class Triangle
  attr_accessor :kind, :sides

  def initialize(side_a, side_b, side_c)
    @sides = [side_a,side_b,side_c]
    self.kind(sides)

  end

  def kind(sides)
    if self.sides.any?{|side| side > 0} && sides[0] + sides[1] < sides[2]
      begin
        raise TriangleError
      rescue TriangleError => error
        error.message
      end
    else
      if a == b && b == c
        @kind = :equilateral
      elsif a == b || b == c || a == c
        @kind = :isosceles
      else
        @kind = :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      puts "Invalid Triangle"
    end
  end


end
