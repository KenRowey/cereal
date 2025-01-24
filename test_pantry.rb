require 'minitest/autorun'
require_relative './pantry'
require_relative './cereal'

class TestPantry < Minitest::Test
  def setup
    @pantry = Pantry.new
  end

  def test_add_cereal
    cereal = Cereal.new("cheerios", 12, 110)
    @pantry.send(:test_add_cereal, cereal)
    assert_equal 1, @pantry.test_variable(:@cereals).size
    assert_equal "cheerios", @pantry.test
  end
end
