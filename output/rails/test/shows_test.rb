require "test_helper"

class ShowsTest < ActiveSupport::TestCase
    test 'should be valid with valid attributes' do
        show = build(:show)
        assert show.valid?
    end

    test 'should not be valid without a name' do
        show = build(:show, name: nil)
        assert_not show.valid?
    end

    test 'should not be valid without a description' do
        show = build(:show, description: nil)
        assert_not show.valid?
    end

    test 'should have many tickets' do
        show = create(:show)
        ticket = create(:ticket, show: show)
        assert_includes show.tickets, ticket
    end
end