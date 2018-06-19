require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "create comment" do
  	it "ensures title is present" do
  		article = Article.new(body: "Article content", title: "Article title")
  		comment = article.comments.new(title: "Comment title")
  		expect(comment.valid?).to eq(true)
  	end
  end
end
