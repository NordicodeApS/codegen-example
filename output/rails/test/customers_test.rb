require "test_helper"

class CustomersTest < ActiveSupport::TestCase
    test 'should get customers' do
        customer = build(:customer)
        assert customer.valid?
    end

    test 'should post customer with valid attributes' do
        customer = build(:customer)
        assert customer.valid?
    end
end