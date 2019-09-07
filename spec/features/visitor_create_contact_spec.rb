require "spec_helper"



feature "Contact creation" do 
  scenario "allows access" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
end

  scenario "allows guest create a contact" do
    visit '/contacts'
    fill_in :contact_name, :with => "Name"
    fill_in :contact_phone, :with => "123-456-789"
    fill_in :contact_text, :with => "123"

    click_button 'Send'

    expect(page).to have_content 'Thanks!'

end
  end