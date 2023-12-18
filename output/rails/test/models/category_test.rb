require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    category = build(:category)
    assert category.valid?
  end

  test 'should not be valid without a name' do
    category = build(:category, name: nil)
    assert_not category.valid?
  end

  test 'should not be valid without a description' do
    category = build(:category, description: nil)
    assert_not category.valid?
  end
end