require "test_helper"

class ShowsTest < ActiveSupport::TestCase
    test 'should get shows with valid category id' do
        show = build(:show)
        assert show.valid?
    end

    test 'should post show with valid attributes' do
        show = build(:show)
        assert show.valid?
    end
end