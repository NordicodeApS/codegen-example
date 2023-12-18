class OrderSerializer
  def self.serialize(order)
    order.as_json(include: :customer)
  end
end