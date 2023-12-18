require "test_helper"

class TicketTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    ticket = Ticket.new(seat: 1, available: true)
    assert ticket.valid?
  end

  test 'should not be valid without a seat' do
    ticket = Ticket.new(available: true)
    assert_not ticket.valid?
  end

  test 'should not be valid without available' do
    ticket = Ticket.new(seat: 1)
    assert_not ticket.valid?
  end
end