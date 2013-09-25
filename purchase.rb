require_relative 'product_list.rb'

class Purchase
  def initialize
    @products = ProductsList.new.parse_file('products.txt')
    @my_products = []
    product = []
    product[0] = '003'
    product[1] = 'Pegamento de personas'
    product[2] = 80
    puts self.total
    self.add(product)
    puts self.total
    puts @my_products
  end
  def add(product)
    @products.each do |element|
      if(product[0] == element[0])
        @my_products << element
        break
      end
    end
  end
  def total
    @my_products.size
  end
end

purchase = Purchase.new