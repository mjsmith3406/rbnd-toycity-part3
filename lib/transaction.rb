
class Transaction
  attr_reader :id, :name, :title
  @@trans = []
  @@id = 0
  @@purchase = 1
  def initialize(product, customer)
    add_id
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

  end
  def customer

  end


  private

  def add_id
    @@id += 1
  end

  def remove_stock
    @product.stock -= 1
  end

  def add_to_trans
    #if @product.stock > 0
      @@trans.push(self)
  #  else
    #  raise OutOfStockError, "'#{title}' is out of stock."
    #end
  end
end
