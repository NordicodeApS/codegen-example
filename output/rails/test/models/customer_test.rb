require "test_helper"

class CustomerTest < ActiveSupport::TestCase
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

  test 'should not be valid without a createdDate' do
    customer = build(:customer, createdDate: nil)
    assert_not customer.valid?
  end
end