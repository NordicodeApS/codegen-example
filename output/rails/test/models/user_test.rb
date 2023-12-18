require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    user = User.new(name: 'Test User', email: 'test@example.com', roleEnum: 1)
    assert user.valid?
  end

  test 'should not be valid without a name' do
    user = User.new(email: 'test@example.com', roleEnum: 1)
    assert_not user.valid?
  end

  test 'should not be valid without an email' do
    user = User.new(name: 'Test User', roleEnum: 1)
    assert_not user.valid?
  end

  test 'should not be valid without a roleEnum' do
    user = User.new(name: 'Test User', email: 'test@example.com')
    assert_not user.valid?
  end
end