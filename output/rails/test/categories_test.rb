require "test_helper"

class CategoriesTest < ActiveSupport::TestCase
    test 'should be valid with valid attributes' do
        category = build(:category)
        assert category.valid?
    end

    test 'should not be valid without a name' do
        category = build(:category, name: nil)
        assert_not category.valid?
    end

    test 'should not be valid without a description' do
        category = build(:category, description: nil)
        assert_not category.valid?
    end

    test 'should have many shows' do
        category = create(:category)
        show = create(:show, category: category)
        assert_includes category.shows, show
    end
end