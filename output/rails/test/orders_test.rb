require "test_helper"

class OrdersTest < ActiveSupport::TestCase
    test 'should be valid with valid attributes' do
        order = build(:order)
        assert order.valid?
    end

    test 'should not be valid without a show' do
        order = build(:order, show: nil)
        assert_not order.valid?
    end

    test 'should not be valid without tickets' do
        order = build(:order, tickets: nil)
        assert_not order.valid?
    end

    test 'should belong to a customer' do
        order = create(:order)
        customer = create(:customer)
        assert_equal order.customer, customer
    end
end