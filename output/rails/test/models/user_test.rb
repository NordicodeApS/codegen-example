require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = create(:user)
  end

  test 'should be valid with valid attributes' do
    assert @user.valid?
  end

  test 'should not be valid without a name' do
    @user.name = nil
    assert_not @user.valid?
  end

  test 'should not be valid without an email' do
    @user.email = nil
    assert_not @user.valid?
  end

  test 'should not be valid without a roleEnum' do
    @user.roleEnum = nil
    assert_not @user.valid?
  end

  test 'should save a new user' do
    new_user = build(:user)
    assert_difference 'User.count', 1 do
      new_user.save
    end
  end

  test 'should update a user' do
    new_name = 'Updated Name'
    assert_no_difference 'User.count' do
      @user.update(name: new_name)
    end

    assert_equal new_name, @user.reload.name
  end

  test 'should destroy a user' do
    assert_difference 'User.count', -1 do
      @user.destroy
    end
  end

  test 'should find a user by id' do
    found_user = User.find_by_id(@user.id)
    assert_equal @user, found_user
  end

  test 'should not find a non-existent user' do
    non_existent_id = @user.id + 1
    found_user = User.find_by_id(non_existent_id)
    assert_nil found_user
  end
end