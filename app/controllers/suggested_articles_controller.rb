class SuggestedArticlesController < ApplicationController

  respond_to :html

  def new
    @suggested_article = SuggestedArticle.new
  end
  
  def create
    @suggested_article = SuggestedArticle.new(suggested_article_params)
    
    respond_with @suggested_article do |format|
      if @suggested_article.save
        SuggestedArticleMailer.suggestion(@suggested_article).deliver!
        SuggestedArticleMailer.thanks(@suggested_article).deliver!
        format.html {redirect_to root_path, notice: "Obrigado pela sua participação"}
      else 
        format.html {render action: 'new'}
      end
    end
  end

  private    
    def suggested_article_params
      params.require(:suggested_article).permit(:name, :email, :body)
    end
end