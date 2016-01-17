require "rails_helper"

RSpec.feature "Users can visit pages" do
  scenario "the index page" do
    visit "/"
    expect(page).to have_content("Kula")
  end
end