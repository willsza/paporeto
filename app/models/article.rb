class Article < ActiveRecord::Base
	validates :title, :category, presence: true
	belongs_to :category
	uploads_one :image, thumb: [90, 80], small: [260, 195], regular: [580, 240], featured: [940, 388], full: [1280, 493]

	def self.featured
		where(featured: true).first
	end
	
	def to_param
		"#{id} #{title}".parameterize	
	end

	def related_article
		category.articles.order(published_at: :desc).where.not(id: id)
	end
end
