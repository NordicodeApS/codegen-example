require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    order = build(:order)
    assert order.valid?
  end

  test 'should not be valid without a customerId' do
    order = build(:order, customerId: nil)
    assert_not order.valid?
  end

  test 'should not be valid without a show' do
    order = build(:order, show: nil)
    assert_not order.valid?
  end

  test 'should not be valid without tickets' do
    order = build(:order, tickets: nil)
    assert_not order.valid?
  end
end