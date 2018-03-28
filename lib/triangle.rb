class Triangle
  attr_accessor :kind

  def initialize(side_a, side_b, side_c)
    self.identify(side_a,side_b,side_c)

  end

    def identify(a,b,c)
      sides = [a,b,c]
      if sides.all?{|side| side > 0} && sides[0] + sides[1] > sides[2]

    end

  class TriangleError < StandardError
    def message
      puts "Invalid Triangle"
    end

  end


end
