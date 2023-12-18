require "test_helper"

class TokenTest < ActiveSupport::TestCase
  test 'should be valid with valid attributes' do
    token = build(:token)
    assert token.valid?
  end

  test 'should not be valid without a bearerToken' do
    token = build(:token, bearerToken: nil)
    assert_not token.valid?
  end

  test 'should not be valid without an expireDate' do
    token = build(:token, expireDate: nil)
    assert_not token.valid?
  end
end