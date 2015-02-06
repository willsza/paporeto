class SuggestedArticleMailer < ApplicationMailer
	
  def suggestion(suggested_article)
    @suggested_article = suggested_article

    mail to: 'Editor do Paporeto <wilfrank84@gmail.com>', from: "#{@suggested_article.name} <#{@suggested_article.email}>", subject: 'Paporeto: Sugestão de Artigo'
  end

  def thanks(suggested_article)
    @suggested_article = suggested_article

    mail to: "#{@suggested_article.name} <#{@suggested_article.email}>", from: 'Editor do Paporeto <wilfrank84@gmail.com>', subject: 'Paporeto: Obrigado pela sua sugestão' 
  end
end
	