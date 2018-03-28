class Triangle
  attr_accessor :kind

  def initialize(side_a, side_b, side_c)
    self.identify(side_a,side_b,side_c)

  end

    def identify(a,b,c)
      sides = [a,b,c]
      if a + b > c && sides.none?(0)
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

  class TriangleError < StandardError
    def message
      puts "Invalid Triangle"
    end

  end


end
