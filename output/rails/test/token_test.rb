require "test_helper"

class TokenTest < ActiveSupport::TestCase
    test 'should post token with valid customer credentials' do
        token = build(:token)
        assert token.valid?
    end
end