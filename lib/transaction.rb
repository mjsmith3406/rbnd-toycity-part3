class Transaction
  attr_reader :id, :name, :title
  @@trans = []
  @@id = 1
  @@purchase = 1
  def initialize(name, title)
    @id = @@id
    @title = title
    @name = name
    add_to_trans
  end
  def self.all
    @@trans
  end
  def self.id
    @@id += 1
    @@trans << @id
  end
  def purchase(title)
    @@purchase += 1
    @@trans << self
  end

  def self.find(input)
    @@trans.find(input)
  end
  def product
    @@trans.find { |item| item.title}
  end
  def customer
    @name
  end


  private

  def add_to_trans
    @@trans.push(self)
  end
end
