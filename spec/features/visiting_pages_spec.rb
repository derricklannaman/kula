require "rails_helper"

RSpec.feature "Users can visit" do
  scenario "the index page" do
    visit "/"
    expect(page).to have_content("KULA")
  end

  it 'allows a user to visit the destination page' do
    visit "/"
    click_link('Destinations')
    expect(current_path).to eq("/destinations")
    expect(page).to have_content('destinations')
  end


end