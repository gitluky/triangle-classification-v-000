class Triangle
  attr_accessor :type

  def initialize(a,b,c)
    sides = [a,b,c]
    kind(sides)
  end

  def kind(sides)
    if sides.any? {|side| side <= 0} || sides[0] + sides[1] < sides[2]
      begin
        raise TriangleError
      rescue

      end




    @type

  end


  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end

end
