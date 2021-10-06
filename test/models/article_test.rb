require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  def setup
    @article = articles(:valid)
  end
  test 'valid article' do
    assert @article.valid?
  end

  test 'invalid article without title' do
    @article.title = nil
    refute @article.valid?, 'article is valid without a title'
    assert_not_nil @article.errors[:title], 'no validation error for title present'
  end

  test 'invalid article without text' do
    @article.text = nil
    refute @article.valid?
    assert_not_nil @article.errors[:text]
  end
end
