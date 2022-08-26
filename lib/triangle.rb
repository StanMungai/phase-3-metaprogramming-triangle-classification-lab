class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3, :equilateral, :isosceles, :scalene
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3 
  end

  def kind
    # greater_than_zero = (@length1 > 0 && @length2 > 0 && @length3 > 0) 
    @length1, @length2, @length3 = [@length1, @length2, @length3].sort

    if (@length1 <= 0 || @length1 + @length2 <= @length3)
      raise TriangleError

    elsif(@length1 == @length3)
      :equilateral

    elsif (@length1 == @length2 || @length2 == @length3)
      :isosceles

    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
