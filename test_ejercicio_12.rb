require_relative 'ejercicio_12.rb'
require 'test/unit'

class TestProductsList < Test::Unit::TestCase
  def setup
    @productsList = ProductsList.new
  end
  def test_
    assert_not_equal([], @productsList.parse_file('ejercicio_12.txt'))
  end
end