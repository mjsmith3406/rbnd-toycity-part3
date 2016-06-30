class Product
  attr_reader :title, :price, :stock, :in_stock
  @products_in_stock = Product.in_stock
  @@products = []

  def initialize(options={})
    @title = options[:title]
    add_to_products
  end
  def self.all
    @@products
  end
  def find_by_title
    #find item by title
  end
  def find_by_name
    #find by name
  end
  def products_in_stock
    #must have all instock with more than 0 in_stock
  end
  private

  def add_to_products
    #need more
    @@products << self
  end
end
