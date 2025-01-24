require 'minitest/autorun'
require_relative 'cereal/pantry'
require_relative 'cereal/cereal'

class TestPantry < Minitest::Test
  def setup
    @pantry = Pantry.new
  end

  def test_add_cereal
    cereal = Cereal.new("cheerios", 12, 110)
    @pantry.send(:add_cereal_with_input, cereal)
    assert_equal 1, @pantry.instance_variable_get(:@cereals).size
    assert_equal "cheerios", @pantry.test
  end
end
