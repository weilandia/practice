
class Catalogue
  attr_reader :cheapest
  def initialize
    @products = []
    @cheapest = @products[0][0]
  end

  def <<(product)
    @products << [product.product, product.price]
    @products = @products.sort_by { |a| a[1] }
    @cheapest = @products[0][0]
  end
end

class Product
  attr_reader :price, :product
  def initialize(product, price)
    @product = product
    @price = price
  end
end
