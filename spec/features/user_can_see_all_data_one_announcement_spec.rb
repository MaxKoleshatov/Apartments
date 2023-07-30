require 'rails_helper'

feature 'User can see all data one announcement' do
  given!(:user) { create(:user) } 

  given!(:sale_apartment) { create(:sale_apartment, user_id: user.id) }
  given!(:rent_apartment) { create(:rent_apartment, user_id: user.id) }
  given!(:daily_apartment) { create(:daily_apartment, user_id: user.id) }

  scenario "user can see all data one sale" do
    visit root_path
    click_on 'Sale apartments'
    click_on sale_apartment.description_sale
    
    expect(page).to have_content sale_apartment.square_apartment
    expect(page).to have_content sale_apartment.price_apartment
    expect(page).to have_content sale_apartment.price_per_square_meter_apartment
    expect(page).to have_content sale_apartment.description_sale
    expect(page).to have_content sale_apartment.user.name
    expect(page).to have_content sale_apartment.user.number
  end

  scenario "user can see all data one rent" do
    visit root_path
    click_on 'Rent apartments'
    click_on rent_apartment.description_rent
    
    expect(page).to have_content rent_apartment.square_apartment
    expect(page).to have_content rent_apartment.price_mount_apartment
    expect(page).to have_content rent_apartment.description_rent
    expect(page).to have_content rent_apartment.user.name
    expect(page).to have_content rent_apartment.user.number
  end

  scenario "user can see all data one daily" do
    visit root_path
    click_on 'Daily apartments'
    click_on daily_apartment.description_daily
    
    expect(page).to have_content daily_apartment.square_apartment
    expect(page).to have_content daily_apartment.price_daily_apartment
    expect(page).to have_content daily_apartment.description_daily
    expect(page).to have_content daily_apartment.user.name
    expect(page).to have_content daily_apartment.user.number
  end
end