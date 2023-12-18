require "test_helper"

class ShowTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    show = Show.new(name: 'Test Show', description: 'Test Description', categoryId: 1)
    assert show.valid?
  end

  test 'should not be valid without a name' do
    show = Show.new(description: 'Test Description', categoryId: 1)
    assert_not show.valid?
  end

  test 'should not be valid without a description' do
    show = Show.new(name: 'Test Show', categoryId: 1)
    assert_not show.valid?
  end
end