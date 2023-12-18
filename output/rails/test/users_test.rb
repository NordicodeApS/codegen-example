require "test_helper"

class UsersTest < ActiveSupport::TestCase
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

    test 'should have many orders' do
        user = create(:user)
        order = create(:order, user: user)
        assert_includes user.orders, order
    end
end