
class Transaction
  attr_reader :id, :product, :customer
  @@trans = []
  @@id = 0
  @@purchase = 1

  def initialize(customer, product)
    @customer = customer
    @product = product
    add_to_trans
    remove_stock
    add_id
    @id = @@id
  end

  def self.all
    @@trans
  end

  def self.find(input)
    @@trans.find { |item| item.id == input }
  end

  def self.find_by_customer(input)
    @@trans.find { |item| item.customer.name == input}
  end

  private

  def remove_stock
    @product.stock -= 1
  end

  def add_to_trans
    if product.stock > 0
      @@trans.push(self)
    else
      raise OutOfStockError, "'#{product.title}' is out of stock."
    end
  end
  def add_id
    @@id += 1
  end

end
