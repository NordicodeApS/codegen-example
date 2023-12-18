require "test_helper"

class TicketsTest < ActiveSupport::TestCase
    test 'should get tickets with valid show id' do
        ticket = build(:ticket)
        assert ticket.valid?
    end

    test 'should post ticket with valid attributes' do
        ticket = build(:ticket)
        assert ticket.valid?
    end
end