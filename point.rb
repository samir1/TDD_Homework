require 'minitest/autorun'

class Point
	
	attr_accessor :x, :y

	def initialize x, y
		@x = x
		@y = y
	end

end

describe Point do
	before do
		@p1 = Point.new 0, 1
	end

	it "creates a valid point" do
		@p1.x.must_equal 0
		@p1.y.must_equal 1
	end
end