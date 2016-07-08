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
  def find_by_title(input)
    @@products.find { |item| item.title == (input)}
    #find item by title
  end
  def find_by_name
    #find by name
  end
  def in_stock
    @@products.find { |item| item.stock > 0}
    #must have all instock with more than 0 in_stock
  end

  private

  def add_to_products
    if @@products.map { |product| product.title }.include? @title
      raise DuplicateProductError, "#{title} already exists"
    else
      Product.add(self)
    end
  end
end
