require "test_helper"

class CustomersTest < ActiveSupport::TestCase
    test 'should be valid with valid attributes' do
        customer = build(:customer)
        assert customer.valid?
    end

    test 'should not be valid without a name' do
        customer = build(:customer, name: nil)
        assert_not customer.valid?
    end

    test 'should not be valid without an email' do
        customer = build(:customer, email: nil)
        assert_not customer.valid?
    end

    test 'should have many orders' do
        customer = create(:customer)
        order = create(:order, customer: customer)
        assert_includes customer.orders, order
    end
end