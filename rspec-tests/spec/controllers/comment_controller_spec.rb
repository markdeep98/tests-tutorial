require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

	context "GET #index" do
		it "has a 200 status code" do
			get :index
			expect(response.status).to eq(200)
		end
	end

	context "GET #show" do
		article = Article.new(body: "Article content", title: "Article title")
  	let!(:comment) { article.comments.new(title: "Comment title") }
		it "render the show template" do
			get :show, params: { id: comment }
			expect(response).to render_template("show")
		end
	end

end

