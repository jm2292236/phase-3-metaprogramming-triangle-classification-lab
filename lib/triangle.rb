require 'pry'

class Triangle
    # write code here
    attr_reader :side1, :side2, :side3

    def initialize side1, side2, side3
        @side1 = side1
        @side2 = side2
        @side3 = side3
    end

    def kind
        if (side1 + side2 + side3 == 0) || !(side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1)
                raise TriangleError
        elsif side1 == side2 && side2 == side3
            return :equilateral
        elsif side1 == side2 || side1 == side3 || side2 == side3
            return :isosceles
        else
            return :scalene
        end
    end

    class TriangleError < StandardError
    end
end


# TESTS
# ======================================
# puts Triangle.new(2, 2, 2).kind
# puts Triangle.new(10, 10, 10).kind

# puts Triangle.new(3, 4, 4).kind
# puts Triangle.new(4, 3, 4).kind
# puts Triangle.new(4, 4, 3).kind
# puts Triangle.new(10, 10, 2).kind

# puts Triangle.new(3, 4, 5).kind
# puts Triangle.new(10, 11, 12).kind
# puts Triangle.new(5, 4, 2).kind
# puts Triangle.new(0.4, 0.6, 0.3).kind

# puts Triangle.new(0, 0, 0).kind

# puts Triangle.new(3, 4, -5).kind

# puts Triangle.new(1, 1, 3).kind 
# puts Triangle.new(2, 4, 2).kind 
# puts Triangle.new(7, 3, 2).kind 
