require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  def setup
    @customer = create(:customer)
  end

  test 'should be valid with valid attributes' do
    assert @customer.valid?
  end

  test 'should not be valid without a name' do
    @customer.name = nil
    assert_not @customer.valid?
  end

  test 'should not be valid without an email' do
    @customer.email = nil
    assert_not @customer.valid?
  end

  test 'should not be valid without a createdDate' do
    @customer.createdDate = nil
    assert_not @customer.valid?
  end

  test 'should save a new customer' do
    new_customer = build(:customer)
    assert_difference 'Customer.count', 1 do
      new_customer.save
    end
  end

  test 'should update a customer' do
    new_name = 'Updated Name'
    assert_no_difference 'Customer.count' do
      @customer.update(name: new_name)
    end

    assert_equal new_name, @customer.reload.name
  end

  test 'should destroy a customer' do
    assert_difference 'Customer.count', -1 do
      @customer.destroy
    end
  end

  test 'should find a customer by id' do
    found_customer = Customer.find_by_id(@customer.id)
    assert_equal @customer, found_customer
  end

  test 'should not find a non-existent customer' do
    non_existent_id = @customer.id + 1
    found_customer = Customer.find_by_id(non_existent_id)
    assert_nil found_customer
  end
end