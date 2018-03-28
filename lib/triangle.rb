class Triangle
  attr_accessor :kind


    class TriangleError < StandardError
      def message
        puts "Invalid Triangle"
      end

    end

  def initialize(side_a, side_b, side_c)
    self.identify(side_a,side_b,side_c)

  end

  def identify(a,b,c)
    sides = [a,b,c]
    if sides.all?{|side| side > 0} && sides[0] + sides[1] > sides[2]
      if a == b && b == c
        self.kind = :equilateral
      elsif a == b || b == c || a == c
        self.kind = :isosceles
      else
        self.kind = :scalene
      end
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        error.message
      end
    end
  end



end
