class Triangle
  attr_accessor :kind

  @@kind = [:quilateral, :isosceles, :scalene]

  def initialize(kind)
    if self.class.kind.none?(kind)
      begin
        raise TriangleError
      rescue TriangleError => error

      end
    else
      @kind = kind
    end
  end

  class TriangleError < StandardError
    
  end






end
