require_relative 'transaction.rb'

class Customer < Transaction
  attr_reader :name
  @@names = []
  def initialize(options={})
    @name = options[:name]
    add_to_name
  end
  def self.all
    @@names
  end
  def self.add(item)
    @@names.push(item)
  end
  def self.find_by_name(input)
    @@names.find { |item| item.name == input}
  end
  private

  def add_to_name
    if @@names.map { |item| item.name}.include? @name
      raise DuplicateCustomerError, "#{name} already exists"
    else
      Customer.add(self)
    end
  end
end
