require 'minitest/autorun'
require_relative 'point'

class Rectangle

	def initialize p1, p2
		@p1 = p1
		@p2 = p2
	end

	def area
		(@p1.x - @p2.x) * (@p1.y-@p2.y)
	end

end

describe Rectangle do
	before do
		@r  = Rectangle.new(Point.new(0,0), Point.new(2,1))
	end

	it "creates a rectangle" do
		@r.nil?.must_equal false
	end

	it "has a valid area" do
		@r.area.must_equal 2
	end

end