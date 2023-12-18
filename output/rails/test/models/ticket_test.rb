require "test_helper"

class TicketTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    ticket = build(:ticket)
    assert ticket.valid?
  end

  test 'should not be valid without a seat' do
    ticket = build(:ticket, seat: nil)
    assert_not ticket.valid?
  end

  test 'should not be valid without available' do
    ticket = build(:ticket, available: nil)
    assert_not ticket.valid?
  end
end