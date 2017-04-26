require 'pry'
class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError.new("All sides have to be greater than 0.")
    else
      if (@side1 + @side2) <= @side3 || (@side1 + @side3) <= @side2 || (@side2 + @side3) <= @side1
        raise TriangleError.new("Triangle Inequality Error")
      else
        if @side1 == @side2 && @side1 == @side3
          :equilateral
        elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
          :isosceles
        else
          :scalene
        end
      end
    end
  end

end

class TriangleError < StandardError
  def initialize(message="Error")
    super(message)
  end
end
