class Triangle
  
  attr_accessor :side_1, :side_2, :side_3, :type

  def initialize(side_1, side_2, side_3)
  @side_1 = side_1
  @side_2 = side_2
  @side_3 = side_3
  
  end

  def kind
    if  all_have_one && all_equal_two
      
      if self.side_1 == self.side_2 && self.side_1 == self.side_3
        @type = :equilateral
      elsif self.side_1 == self.side_2 || self.side_1 == side_3 || self.side_2 == self.side_3
        @type = :isosceles
      else
        @type = :scalene
      end

      else 
        raise TriangleError
    end
  end

  def all_have_one
    self.side_1 > 0 && self.side_2 > 0 && self.side_3 > 0
  end

  def all_equal_two
    self.side_1 + self.side_2 > self.side_3 && self.side_1 + self.side_3 > self.side_2 && self.side_3 + self.side_2 > self.side_1 
  end

  class TriangleError < StandardError

  end

end
