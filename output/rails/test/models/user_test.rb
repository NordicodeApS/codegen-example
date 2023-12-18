require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    user = build(:user)
    assert user.valid?
  end

  test 'should not be valid without a name' do
    user = build(:user, name: nil)
    assert_not user.valid?
  end

  test 'should not be valid without an email' do
    user = build(:user, email: nil)
    assert_not user.valid?
  end

  test 'should not be valid without a roleEnum' do
    user = build(:user, roleEnum: nil)
    assert_not user.valid?
  end
end