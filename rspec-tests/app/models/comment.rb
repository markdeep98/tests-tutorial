class Comment < ApplicationRecord
	validates_presence_of :title
	belongs_to :article
end
