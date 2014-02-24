require 'minitest/autorun'
require_relative 'point'

class Circle

	def initialize p1, r
		@p1 = p1
		@r = r
	end

	def area
		(Math::PI * @r * @r)
	end

end

describe Circle do
	before do
		@c = Circle.new(Point.new(0, 0), 2)
	end

	it "creates a circle" do
		@c.nil?.must_equal false
	end

	it "has correct area" do
		@c.area.must_equal 12.566370614359172
	end

end