class CustomerSerializer
  def self.serialize(customer)
    customer.as_json
  end
end