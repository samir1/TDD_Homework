require 'minitest/autorun'
require_relative 'point'

class Triangle

	def initialize p1, p2, p3
		@p1 = p1
		@p2 = p2
		@p3 = p3
	end

	def area
		(@p1.x * (@p2.y - @p3.y)).abs + (@p2.x * (@p3.y - @p1.y)).abs + (@p3.x * (@p1.y - @p2.y)).abs
	end

end

describe Triangle do
	before do
		@t = Triangle.new(Point.new(1,2), Point.new(3,7), Point.new(4,5))
	end

	it "creates a triangle" do
		@t.nil?.must_equal false
	end

	it "has correct area" do
		@t.area.must_equal 31
	end

end