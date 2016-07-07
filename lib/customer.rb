class Customer
  attr_reader :name
  @@name = []
  def initialize

  end
  def self.all
    @@name
  end
  private

  def add_to_name
    @@name << self
  end
end
