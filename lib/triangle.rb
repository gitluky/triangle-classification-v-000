class Triangle
  attr_accessor :kind

  def initialize(side_a, side_b, side_c)
    self.kind(side_a, side_b, side_c)
  end

  def kind(a,b,c)
    side_array = [a,b,c]
    if side_array.any?{|side| side <= 0} || side_array[0] + side_array[1] < side_array[2]
      begin
        raise TriangleError
      rescue TriangleError => error
        error.message
      end
    else
      if side_array[0] == side_array[1] && side_array[1] == side_array[2]
        @kind = :equilateral
      elsif side_array[0] == side_array[1] && side_array[0] != side_array[2]
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
