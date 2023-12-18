class TicketSerializer
  def self.serialize(ticket)
    ticket.as_json()
  end
end