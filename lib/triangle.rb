class Triangle
  attr_accessor :type

  def initialize(a,b,c)
    @sides = [a,b,c]
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
      if sides.select {|side| side == side[1]}.count > 2
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
