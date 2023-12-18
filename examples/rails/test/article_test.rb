require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
    def setup
        @article = create(:article)
    end

    test 'should be valid with valid attributes' do
        assert @article.valid?
    end

    test 'should not be valid without a title' do
        @article.title = nil
        assert_not @article.valid?
    end

    test 'should not be valid without content' do
        @article.content = nil
        assert_not @article.valid?
    end

    test 'should save a new article' do
        new_article = build(:article)
        assert_difference 'Article.count', 1 do
            new_article.save
        end
    end

    test 'should update an article' do
        new_title = 'Updated Title'
        assert_no_difference 'Article.count' do
            @article.update(title: new_title)
        end

        assert_equal new_title, @article.reload.title
    end

    test 'should destroy an article' do
        assert_difference 'Article.count', -1 do
            @article.destroy
        end
    end

    test 'should find an article by id' do
        found_article = Article.find_by_id(@article.id)
        assert_equal @article, found_article
    end

    test 'should not find a non-existent article' do
        non_existent_id = @article.id + 1
        found_article = Article.find_by_id(non_existent_id)
        assert_nil found_article
    end
end