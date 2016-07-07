class Product
  attr_reader :title, :price, :stock
  @@products = []
  def self.add(item)
    @@products.push(item)
  end
  def initialize(options={})
    @title = options[:title]
    add_to_products
  end
  def self.all
    @@products
  end
  def find_by_title
    @@products.find_all { |item| item[:title]}
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
    if
      Product.add(self)
    else
      raise DuplicateProductError, "#{@title} already exists"
    end
  end
end
