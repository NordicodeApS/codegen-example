require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  def setup
    @order = create(:order)
  end

  test 'should be valid with valid attributes' do
    assert @order.valid?
  end

  test 'should not be valid without a showId' do
    @order.showId = nil
    assert_not @order.valid?
  end

  test 'should not be valid without a customerId' do
    @order.customerId = nil
    assert_not @order.valid?
  end

  test 'should save a new order' do
    new_order = build(:order)
    assert_difference 'Order.count', 1 do
      new_order.save
    end
  end

  test 'should destroy an order' do
    assert_difference 'Order.count', -1 do
      @order.destroy
    end
  end

  test 'should find an order by id' do
    found_order = Order.find_by_id(@order.id)
    assert_equal @order, found_order
  end

  test 'should not find a non-existent order' do
    non_existent_id = @order.id + 1
    found_order = Order.find_by_id(non_existent_id)
    assert_nil found_order
  end
end