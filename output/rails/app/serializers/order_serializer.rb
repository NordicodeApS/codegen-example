class OrderSerializer
  def self.serialize(order)
    order.as_json()
  end
end