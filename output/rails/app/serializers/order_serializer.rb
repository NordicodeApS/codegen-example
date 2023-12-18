class OrderSerializer
    def self.serialize(order)
        order.as_json(
            :include => {
                :customer => {},
                :tickets => {}
            }
        )
    end
end