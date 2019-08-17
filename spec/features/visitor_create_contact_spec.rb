require "spec_helper"



feature "Contact creation" do 
  scenario "allows access " do
    visit '/contacts'

    expect(page).to have_content 'Contact us'
end
  end