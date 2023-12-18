class OrderSerializer
  def self.serialize(order)
    order.as_json(
      :include => {
        :show => {},
        :customer => {},
        :tickets => {}
      },
      only: [ :id, :showId, :customerId, :show, :customer, :tickets ],
    )
  end
end