require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    category = Category.new(name: 'Test Category', description: 'Test Description')
    assert category.valid?
  end

  test 'should not be valid without a name' do
    category = Category.new(description: 'Test Description')
    assert_not category.valid?
  end

  test 'should not be valid without a description' do
    category = Category.new(name: 'Test Category')
    assert_not category.valid?
  end
end