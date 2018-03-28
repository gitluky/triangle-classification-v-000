class Triangle
  attr_accessor :kind

  @@kind = [:quilateral, :isosceles, :scalene]

  def initialize(kind)
    if self.class.kind.none?(kind)
      begin
        raise KindException
      rescue KindException => error
        error.message
      end
    else
      @kind = kind
    end
  end
  
      

    

  
end
