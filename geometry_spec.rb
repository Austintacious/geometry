require 'rspec'
require_relative 'geometry.rb'

describe Square do
  it 'calculates the perimeter' do
    square = Square.new(10.0)
    expect(square.perimeter).to eql(40.0)
  end

  it 'calculates the area' do
    square = Square.new(10.0)
    expect(square.area).to eql(100.0)
  end
end

describe Circle do
  it 'calculates the diameter' do
    circle = Circle.new(10.0)
    expect(circle.diameter).to eql(20.0)
  end

  it 'calculates the circumference' do
    circle = Circle.new(10.0)
    expect(circle.circumference).to eql(62.83185307179586)
  end

  it 'calculates the area' do
    circle = Circle.new(10.0)
    expect(circle.area).to eql(314.1592653589793)
  end
end

describe Rectangle do
  it 'calculates the perimeter' do
    rectangle = Rectangle.new(10.0, 20.0)
    expect(rectangle.perimeter).to eql(60.0)
  end

  it 'calculates the area' do
    rectangle = Rectangle.new(10.0, 20.0)
    expect(rectangle.area).to eql(200.0)
  end

  it 'returns zero if only given one value' do
    rectangle = Rectangle.new(10.0)
    expect(rectangle.perimeter).to eql(0)
    expect(rectangle.area).to eql(0.0)
  end
end

describe Triangle do
  it 'calculates the perimeter' do
    triangle = Triangle.new(5.0, 5.0, 5.0)
    expect(triangle.perimeter).to eql(15.0)
  end

  it 'calculates the area' do
    triangle = Triangle.new(5.0, 5.0, 5.0)
    expect(triangle.area).to eql(10.825317547305483)
  end

  it 'returns zero if only given one or two values' do
    triangle1 = Triangle.new(10.0)
    triangle2 = Triangle.new(10.0, 20.0)
    expect(triangle1.perimeter).to eql(0)
    expect(triangle1.area).to eql(0)
    expect(triangle2.perimeter).to eql(0)
    expect(triangle2.area).to eql(0)
  end
end

describe Trapezoid do
  it 'calculates the perimeter' do
    trapezoid = Trapezoid.new(5.0, 10.0, 15.0, 20.0)
    expect(trapezoid.perimeter).to eql(50.0)
  end

  it 'returns zero if only given one or two values' do
    trapezoid1 = Trapezoid.new(10.0)
    trapezoid2 = Trapezoid.new(10.0, 15.0)
    trapezoid3 = Trapezoid.new(10.0, 15.0, 20.0)
    expect(trapezoid1.perimeter).to eql(0)
    expect(trapezoid2.perimeter).to eql(0)
    expect(trapezoid3.perimeter).to eql(0)
  end
end