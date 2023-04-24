class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a= a
    @b= b
    @c= c
  end

  def kind(a,b,c)
    if a == b && b == c
      :equilateral
    if a == b || a == c
      :isosceles
    else 
      begin
        raise TriangleError
        :scalene
      end
    end
  end 

  class TriangleError < StandardError
  end
end
