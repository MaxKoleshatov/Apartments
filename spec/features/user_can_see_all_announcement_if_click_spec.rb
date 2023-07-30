require 'rails_helper'

feature 'user can see all announcement if click' do
  given!(:user) { create(:user) } 

  given!(:sale_apartment_1) { create(:sale_apartment, user_id: user.id) }
  given!(:sale_apartment_2) { create(:sale_apartment, user_id: user.id) }

  given!(:rent_apartment_1) { create(:rent_apartment, user_id: user.id) }
  given!(:rent_apartment_2) { create(:rent_apartment, user_id: user.id) }

  given!(:daily_apartment_1) { create(:daily_apartment, user_id: user.id) }
  given!(:daily_apartment_2) { create(:daily_apartment, user_id: user.id) }

  scenario "user can see all sale if click link" do
    visit root_path
    click_on 'Sale apartments'
    # save_and_open_page
    expect(page).to have_content sale_apartment_1.description_sale
    expect(page).to have_content sale_apartment_2.description_sale
  end

  scenario "user can see all daily if click link" do
    visit root_path
    click_on 'Rent apartments'
    expect(page).to have_content rent_apartment_1.description_rent
    expect(page).to have_content rent_apartment_2.description_rent
  end

  scenario "user can see all rent if click link" do
    visit root_path
    click_on 'Daily apartments'
    expect(page).to have_content daily_apartment_1.description_daily
    expect(page).to have_content daily_apartment_2.description_daily
  end
end