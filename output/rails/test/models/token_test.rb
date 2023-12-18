require 'test_helper'

class TokenTest < ActiveSupport::TestCase
  def setup
    @token = create(:token)
  end

  test 'should be valid with valid attributes' do
    assert @token.valid?
  end

  test 'should not be valid without a bearerToken' do
    @token.bearerToken = nil
    assert_not @token.valid?
  end

  test 'should not be valid without an expireDate' do
    @token.expireDate = nil
    assert_not @token.valid?
  end

  test 'should save a new token' do
    new_token = build(:token)
    assert_difference 'Token.count', 1 do
      new_token.save
    end
  end

  test 'should update a token' do
    new_bearerToken = 'Updated Token'
    assert_no_difference 'Token.count' do
      @token.update(bearerToken: new_bearerToken)
    end

    assert_equal new_bearerToken, @token.reload.bearerToken
  end

  test 'should destroy a token' do
    assert_difference 'Token.count', -1 do
      @token.destroy
    end
  end

  test 'should find a token by id' do
    found_token = Token.find_by_id(@token.id)
    assert_equal @token, found_token
  end

  test 'should not find a non-existent token' do
    non_existent_id = @token.id + 1
    found_token = Token.find_by_id(non_existent_id)
    assert_nil found_token
  end
end