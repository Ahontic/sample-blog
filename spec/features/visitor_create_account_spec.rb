require "spec_helper"

feature "Account creation" do 
  scenario "allows guest create account" do
    sign_up
      # expect(page).to have_content I18n.t('devise.registrations.signed_up')

  end
  end