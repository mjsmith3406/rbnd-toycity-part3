class Transaction
  attr_reader :id, :purchase
  @@trans = []
  @@id = 1
  @@purchase = 1
  def initialize(name, title)
    @id = @@id
    @title = title
    @name = name
    @purchase = @@purchase
  end
  def self.all
    @@trans
  end
  def self.id
    @@id += 1
    @@trans << @id
  end
  def product
    @title
  end
  def customer
    @name
  end
  def purchase(title)
    @@purchase += 1
    @@trans << @purchase
    #only printing 1 needs to print 2
  end
  def self.find(input)
    
  end

end
