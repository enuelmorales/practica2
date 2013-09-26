require_relative 'purchase.rb'
require 'test/unit'

class TestProductsList < Test::Unit::TestCase
  def setup
    @productsList = ProductsList.new
    @purchase = Purchase.new
  end
  def test_parse_file
    assert_not_equal([], @productsList.parse_file('products.txt'))
  end
  def test_purchase_total
    assert_equal(0, @purchase.total)
    product = []
    product[0] = '003'
    product[1] = 'Pegamento de personas'
    product[2] = 80
    @purchase.add(product)
    assert_equal(80, @purchase.total)
  end
  def test_apply_discount
    assert_equal(?, @purchase.total)
    assert_equal(?, @purchase.apply_discount(10).total)
  end
end