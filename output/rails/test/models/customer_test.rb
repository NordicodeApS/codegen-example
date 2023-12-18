require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    customer = Customer.new(name: 'Test Customer', email: 'test@example.com', createdDate: '2022-04-01')
    assert customer.valid?
  end

  test 'should not be valid without a name' do
    customer = Customer.new(email: 'test@example.com', createdDate: '2022-04-01')
    assert_not customer.valid?
  end

  test 'should not be valid without an email' do
    customer = Customer.new(name: 'Test Customer', createdDate: '2022-04-01')
    assert_not customer.valid?
  end

  test 'should not be valid without a createdDate' do
    customer = Customer.new(name: 'Test Customer', email: 'test@example.com')
    assert_not customer.valid?
  end
end