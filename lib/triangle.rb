class Triangle
  attr_accessor :kind

  @@kind = [:quilateral, :isosceles, :scalene]

  def initialize(length_1,length_2,length_3)

  end

    def identify(a,b,c)
      case type
        when a == b && b == c
          self.kind = :equilateral
        when a == b || b == c || a == c
          self.kind == :isosceles
        else
          self.kind == :scalene
      end
    end

  class TriangleError < StandardError

  end






end
