require 'rails_helper'

feature 'user can see all announcement if click' do
  given!(:user) { create(:user) } 

  given!(:apartment_sale) { create(:apartment, option: "sale", user_id: user.id) }
  given!(:apartment_rent) { create(:apartment, option: "rent", user_id: user.id) }
  given!(:apartment_daily) { create(:apartment, option: "daily", user_id: user.id) }

  scenario "user can see all sale if click link" do
    visit root_path
    click_on 'Sale apartments'
    expect(page).to have_content apartment_sale.description
    expect(page).not_to have_content apartment_rent.description
    expect(page).not_to have_content apartment_daily.description
  end

  scenario "user can see all daily if click link" do
    visit root_path
    click_on 'Rent apartments'
    expect(page).to have_content apartment_rent.description
    expect(page).not_to have_content apartment_sale.description
    expect(page).not_to have_content apartment_daily.description
  end

  scenario "user can see all rent if click link" do
    visit root_path
    click_on 'Daily apartments'
    expect(page).to have_content apartment_daily.description
    expect(page).not_to have_content apartment_sale.description
    expect(page).not_to have_content apartment_rent.description
  end
end