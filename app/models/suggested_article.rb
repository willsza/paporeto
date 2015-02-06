class SuggestedArticle < ActiveRecord::Base
	validates :name, :email, :body, presence: true
end
