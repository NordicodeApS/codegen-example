require "test_helper"

class TicketsTest < ActiveSupport::TestCase
    test 'should be valid with valid attributes' do
        ticket = build(:ticket)
        assert ticket.valid?
    end

    test 'should not be valid without a seat' do
        ticket = build(:ticket, seat: nil)
        assert_not ticket.valid?
    end

    test 'should not be valid without availability' do
        ticket = build(:ticket, available: nil)
        assert_not ticket.valid?
    end

    test 'should belong to a show' do
        ticket = create(:ticket)
        show = create(:show)
        assert_equal ticket.show, show
    end
end