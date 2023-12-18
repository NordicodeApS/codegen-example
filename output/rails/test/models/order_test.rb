require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    customer = customers(:one)
    order = Order.new(show: 'Test Show', tickets: 1, customer: customer)
    assert order.valid?
  end

  test 'should not be valid without a show' do
    customer = customers(:one)
    order = Order.new(tickets: 1, customer: customer)
    assert_not order.valid?
  end

  test 'should not be valid without tickets' do
    customer = customers(:one)
    order = Order.new(show: 'Test Show', customer: customer)
    assert_not order.valid?
  end

  test 'should not be valid without a customer' do
    order = Order.new(show: 'Test Show', tickets: 1)
    assert_not order.valid?
  end
end