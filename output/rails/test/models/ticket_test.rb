require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  def setup
    @ticket = create(:ticket)
  end

  test 'should be valid with valid attributes' do
    assert @ticket.valid?
  end

  test 'should not be valid without a showId' do
    @ticket.showId = nil
    assert_not @ticket.valid?
  end

  test 'should not be valid without a seat' do
    @ticket.seat = nil
    assert_not @ticket.valid?
  end

  test 'should not be valid without available' do
    @ticket.available = nil
    assert_not @ticket.valid?
  end

  test 'should save a new ticket' do
    new_ticket = build(:ticket)
    assert_difference 'Ticket.count', 1 do
      new_ticket.save
    end
  end

  test 'should update a ticket' do
    new_seat = 2
    assert_no_difference 'Ticket.count' do
      @ticket.update(seat: new_seat)
    end

    assert_equal new_seat, @ticket.reload.seat
  end

  test 'should destroy a ticket' do
    assert_difference 'Ticket.count', -1 do
      @ticket.destroy
    end
  end

  test 'should find a ticket by id' do
    found_ticket = Ticket.find_by_id(@ticket.id)
    assert_equal @ticket, found_ticket
  end

  test 'should not find a non-existent ticket' do
    non_existent_id = @ticket.id + 1
    found_ticket = Ticket.find_by_id(non_existent_id)
    assert_nil found_ticket
  end
end