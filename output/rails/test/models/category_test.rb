require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = create(:category)
  end

  test 'should be valid with valid attributes' do
    assert @category.valid?
  end

  test 'should not be valid without a name' do
    @category.name = nil
    assert_not @category.valid?
  end

  test 'should not be valid without a description' do
    @category.description = nil
    assert_not @category.valid?
  end

  test 'should save a new category' do
    new_category = build(:category)
    assert_difference 'Category.count', 1 do
      new_category.save
    end
  end

  test 'should update a category' do
    new_name = 'Updated Name'
    assert_no_difference 'Category.count' do
      @category.update(name: new_name)
    end

    assert_equal new_name, @category.reload.name
  end

  test 'should destroy a category' do
    assert_difference 'Category.count', -1 do
      @category.destroy
    end
  end

  test 'should find a category by id' do
    found_category = Category.find_by_id(@category.id)
    assert_equal @category, found_category
  end

  test 'should not find a non-existent category' do
    non_existent_id = @category.id + 1
    found_category = Category.find_by_id(non_existent_id)
    assert_nil found_category
  end
end