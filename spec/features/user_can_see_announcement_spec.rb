require 'rails_helper'

feature 'User can see announcement' do
  # given(:user) { create(:user) }
  scenario "user can see sale" do
    visit root_path
    expect(page).to have_link 'Sale apartments' 
  end

  scenario "user can see rent" do
    visit root_path
    expect(page).to have_link 'Rent apartments' 
  end

  scenario "user can see daily" do
    visit root_path
    expect(page).to have_link 'Daily apartments' 
  end
end