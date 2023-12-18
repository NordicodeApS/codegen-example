class TicketSerializer
  def self.serialize(ticket)
    ticket.as_json(
      only: [ :showId, :id, :seat, :available ],
    )
  end
end