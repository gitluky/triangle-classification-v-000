class Triangle
  attr_accessor :kind, :sides

  def initialize(side_a, side_b, side_c)
    @sides = [side_a,side_b,side_c]

  end

  def kind(a,b,c)
    if self.sides.any?{|side| side > 0} && sides[0] + sides[1] < sides[2]
      begin
        raise TriangleError
      rescue TriangleError => error
        error.message
      end
    else
      if a == b && b == c
        self.kind = :equilateral
      elsif a == b || b == c || a == c
        self.kind = :isosceles
      else
        self.kind = :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      puts "Invalid Triangle"
    end
  end


end
