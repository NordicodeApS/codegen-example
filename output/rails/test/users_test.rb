require "test_helper"

class UsersTest < ActiveSupport::TestCase
    test 'should get users' do
        user = build(:user)
        assert user.valid?
    end

    test 'should post user with valid attributes' do
        user = build(:user)
        assert user.valid?
    end
end