class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true, length: {minimum:5 }

  def check_params(article_params)
    if article_params[:title] == "" or article_params[:content] == "" or article_params[:author] == ""
      return false
    else
      return true
    end 
  end

  def check_article(article_params)
    if Article.where(title: article_params[:title], author: article_params[:author]).first ==nil
      return  true
    else
      return false
    end
  end

  def self.create_article(article_params,author)
    article = Article.new(article_params)
    article.author=author
    if article.save
      return article
    else
      return nil
    end
  end

end