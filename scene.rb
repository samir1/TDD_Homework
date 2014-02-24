require 'minitest/autorun'
require_relative 'rectangle'
require_relative 'triangle'
require_relative 'circle'

class Scene

	def initialize
		@shape_list = []
	end

	def shape_count
		@shape_list.size
	end

	def total_area
		sum = 0
		@shape_list.each { |x| sum += x}
		sum
	end

	def add_shape shape
		@shape_list.push shape
	end

	def remove_shape shape=nil
		shape.nil? ? @shape_list.pop : @shape_list.delete(shape)
	end

end

describe Circle do
	before do
		@s = Scene.new
		@r  = Rectangle.new(Point.new(0,0), Point.new(2,1))
		@t = Triangle.new(Point.new(1,2), Point.new(3,7), Point.new(4,5))
		@c = Circle.new(Point.new(0, 0), 2)
	end

	it "creates a scene" do
		@s.nil?.must_equal false
	end

	it "adds and removes shapes" do
		@s.add_shape @r
		@s.add_shape @t
		@s.add_shape @c
		@s.shape_count.must_equal 3
		@s.remove_shape @r
		@s.shape_count.must_equal 2
	end

end