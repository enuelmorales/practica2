require_relative 'product_list.rb'

class Purchase
  attr_accessor :discount, :down
  def initialize
    @products = ProductsList.new.parse_file('products.txt')
    @my_products = []
    self.discount = 10
    self.down = 65
    product = []
    product[0] = '003'
    product[1] = 'Pegamento de personas'
    product[2] = 80
    #puts self.total
    self.add(product)
    puts self.total
    #puts @my_products
    puts self.apply_discount(10)
    puts self.total
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
    tot = 0
    @my_products.each_with_index do |element, index|
      tot += element[index][2].to_i
    end
    tot = (tot > 200)? self.apply_discount(tot) : tot
    if @my_products.size > 2
      coincidencia = 0
      @my_products.each do |element|
        if element[1] == 'Historias de chillar'
          coincidencia += 1
        end
      end
      if coincidencia == 2
        tot -= self.down
      end
    end
    tot
  end
  def apply_discount(tot)
    (self.discount * tot) / 100
  end
end

purchase = Purchase.new