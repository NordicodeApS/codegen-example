require "test_helper"

class CategoriesTest < ActiveSupport::TestCase
    test 'should get categories' do
        category = build(:category)
        assert category.valid?
    end

    test 'should post category with valid attributes' do
        category = build(:category)
        assert category.valid?
    end
end