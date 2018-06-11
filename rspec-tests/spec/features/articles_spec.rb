require 'rails_helper'

RSpec.feature "Articles", type: :feature do
	context "Create a new article" do
		scenario "The visitor create a new article" do
			visit new_article_path
			expect(page).to have_text("Create a new article")
		end
	end

	context "Update an article" do
		
	end

	context "Destroy an article" do
		
	end

end
