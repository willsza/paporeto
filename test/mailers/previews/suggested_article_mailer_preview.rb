# Preview all emails at http://localhost:3000/rails/mailers/suggested_article_mailer
class SuggestedArticleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/suggested_article_mailer/suggestion
  def suggestion
  	@suggested_article = SuggestedArticle.new(name: 'Emanuel', email: 'emanuel@gmail.com', body: 'Sugestão de artigo')
    SuggestedArticleMailer.suggestion(@suggested_article)
  end

  # Preview this email at http://localhost:3000/rails/mailers/suggested_article_mailer/thanks
  def thanks
  	@suggested_article = SuggestedArticle.new(name: 'Emanuel', email: 'emanuel@gmail.com', body: 'Sugestão de artigo')
    SuggestedArticleMailer.thanks(@suggested_article)
  end

end
