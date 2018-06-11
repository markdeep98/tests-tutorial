require 'rails_helper'

RSpec.describe Article, type: :model do
	context "validation tests" do
		it "ensures title is present" do
			article = Article.new(body: "Test content")
			expect(article.valid?).to eq(false)
		end

		it "ensures body is present" do
			article = Article.new(title: "Test title")
			expect(article.valid?).to eq(false)
		end

		it "ensures article is active by default" do
			article = Article.new(title: "Test content", body: "Test body")
			expect(article.active?).to eq(true)
		end

		it "should be able to save article" do
			article = Article.new(title: "Test content", body: "Test body")
			expect(article.save).to eq(true)
		end
	end

	context "scope tests" do
		let(:params) { { title: "Test content", body: "Test body" } }
		before(:each) do
			Article.create(params)
			Article.create(params)
			Article.create(params)
			Article.create(params.merge(active: false))
			Article.create(params.merge(active: false))
		end

		it "should be able to select active articles" do
			expect(Article.active.count).to eq(3)
		end

		it "should be able to select inactive articles" do
			expect(Article.inactive.count).to eq(2)
		end

	end
end
