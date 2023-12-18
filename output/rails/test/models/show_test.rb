require "test_helper"

class ShowTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    show = build(:show)
    assert show.valid?
  end

  test 'should not be valid without a name' do
    show = build(:show, name: nil)
    assert_not show.valid?
  end

  test 'should not be valid without a description' do
    show = build(:show, description: nil)
    assert_not show.valid?
  end

  test 'should not be valid without a category_id' do
    show = build(:show, category_id: nil)
    assert_not show.valid?
  end

  test 'should not be valid without a date' do
    show = build(:show, date: nil)
    assert_not show.valid?
  end
end