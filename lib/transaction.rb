
class Transaction
  attr_reader :id, :name, :title
  @@trans = []
  @@id = 0
  @@purchase = 1
  def initialize(product, customer)
    add_id
    #remove_stock
    @id = @@id
    @customer = customer
    @product = product
    add_to_trans
  end
  def self.all
    @@trans
  end

  def self.find(input)
    @@trans.find { |item| item.id == input }
  end
  def product
    @@trans.find(@product)
  end
  def customer

  end
  def self.find_by_customer(input)
    @@trans.find { |item| item.customer == input}
  end


  private

  def add_id
    @@id += 1
  end

  def add_to_trans
    if @@trans.find { |item| item.stock > 0}
      @@trans.push(self)
    else
      raise OutOfStockError, "'#{}' is out of stock."
    end
  end
end
