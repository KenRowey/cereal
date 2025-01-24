require 'minitest/autorun'
require_relative '../pantry'
require_relative '../cereal'

class TestPantry < Minitest::Test
  def setup
    @pantry = Pantry.new
  end

  def test_add_cereal
    cereal = Cereal.new("cheerios", 24, 110)
    @pantry.instance_variable_get(:@cereals) << cereal

    cereals = @pantry.instance_variable_get(:@cereals)
    assert_equal 1, cereals.size
    assert_equal "cheerios", cereals[0].name
    assert_equal 24, cereals[0].ounces
    assert_equal 110, cereals[0].calories
  end
end
