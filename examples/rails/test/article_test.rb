require "test_helper"

class ArticleTest < ActiveSupport::TestCase
    test 'should be valid with valid attributes' do
      article = build(:article)
      assert article.valid?
    end
  
    test 'should not be valid without a title' do
      article = build(:article, title: nil)
      assert_not article.valid?
    end
  
    test 'should not be valid without content' do
      article = build(:article, content: nil)
      assert_not article.valid?
    end
  
    test 'should have many comments' do
      article = create(:article)
      comment = create(:comment, article: article)
      assert_includes article.comments, comment
    end
  end