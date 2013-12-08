class Square
  def initialize(side)
    @side = side
  end

  def perimeter
    @side * 4
  end

  def area
    @side ** 2
  end
end

class Circle
  def initialize(radius)
    @radius = radius
  end

  def diameter
    @diameter = @radius * 2
    @diameter
  end

  def circumference
    @circumference = diameter * Math::PI
    @circumference
  end

  def area
    Math::PI * (@radius**2)
  end
end

class Rectangle
  def initialize(length=0, width=0)
    @length = length
    @width = width
  end

  def perimeter
    if @length == 0 || @width == 0
      0
    else
      2 * (@length + @width)
    end
  end

  def area
    @length * @width
  end
end

class Triangle
  def initialize(side1=0, side2=0, side3=0)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def perimeter
    if @side1 == 0 || @side2 == 0 || @side3 == 0
      0
    else
      @perimeter = @side1 + @side2 + @side3
      @perimeter
    end
  end

  def area
    if @side1 == 0 || @side2 == 0 || @side3 == 0
      0
    else
      perimeter
      s = (@perimeter / 2)
      @area = Math.sqrt(s*(s-@side1)*(s-@side2)*(s-@side3))
      @area
    end
  end
end

class Trapezoid
  def initialize(side1=0, side2=0, side3=0, side4=0)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side4 = side4
  end

  def perimeter
    if @side1 == 0 || @side2 == 0 || @side3 == 0 || @side4 == 0
      0
    else
      @side1 + @side2 + @side3 + @side4
    end
  end
end