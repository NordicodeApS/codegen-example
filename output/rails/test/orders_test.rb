require "test_helper"

class OrdersTest < ActiveSupport::TestCase
    test 'should get orders' do
        order = build(:order)
        assert order.valid?
    end

    test 'should post order with valid attributes' do
        order = build(:order)
        assert order.valid?
    end
end