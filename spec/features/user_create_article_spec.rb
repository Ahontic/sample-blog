require "spec_helper"



feature "Article creation" do 
  before(:all) do
    sign_up
  end

  scenario "allows user visit a new article page" do
    visit new_article_path
      expect(page).to have_content 'New article'

  end
  end