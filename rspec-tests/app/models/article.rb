class Article < ApplicationRecord
	validates_presence_of :title, :body
	has_many :comments
	scope :active, ->() { where(active:true) }
	scope :inactive, ->() { where(active:false) }
end
