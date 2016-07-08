class Transaction
  attr_reader :id

  def initialize(optons={})
    @id = options[:id]
  end
  def add_id
    @id += 1
  end

end
