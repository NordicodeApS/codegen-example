class CustomerSerializer
  def self.serialize(customer)
    customer.as_json(
      only: [ :id, :name, :email, :createdDate ],
    )
  end
end