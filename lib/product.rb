class Product
  attr_reader :title, :price, :stock
  @@products = []
  def self.add(item)
    @@products.push(item)
  end
  def initialize(options={})
    @title = options[:title]
    @price = options[:price]
    @stock = options[:stock]
    add_to_products
  end
  def self.all
    @@products
  end
  def self.find_by_title(input)
    @@products.find { |item| item.title == input}
    #find item by title
  end
  def self.in_stock
    @@products.find_all { |item| item.stock > 0}
    #must have all instock with more than 0 in_stock
  end
  def in_stock?
    stock > 0
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
