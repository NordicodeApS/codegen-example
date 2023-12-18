require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  def setup
    @show = create(:show)
  end

  test 'should be valid with valid attributes' do
    assert @show.valid?
  end

  test 'should not be valid without a name' do
    @show.name = nil
    assert_not @show.valid?
  end

  test 'should not be valid without a description' do
    @show.description = nil
    assert_not @show.valid?
  end

  test 'should not be valid without a category_id' do
    @show.category_id = nil
    assert_not @show.valid?
  end

  test 'should not be valid without a date' do
    @show.date = nil
    assert_not @show.valid?
  end

  test 'should save a new show' do
    new_show = build(:show)
    assert_difference 'Show.count', 1 do
      new_show.save
    end
  end

  test 'should update a show' do
    new_name = 'Updated Name'
    assert_no_difference 'Show.count' do
      @show.update(name: new_name)
    end

    assert_equal new_name, @show.reload.name
  end

  test 'should destroy a show' do
    assert_difference 'Show.count', -1 do
      @show.destroy
    end
  end

  test 'should find a show by id' do
    found_show = Show.find_by_id(@show.id)
    assert_equal @show, found_show
  end

  test 'should not find a non-existent show' do
    non_existent_id = @show.id + 1
    found_show = Show.find_by_id(non_existent_id)
    assert_nil found_show
  end
end