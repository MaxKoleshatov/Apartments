require 'rails_helper'

feature 'User can see all data one announcement' do
  given!(:user) { create(:user) } 

  given!(:apartment_sale) { create(:apartment, option: "sale", user_id: user.id) }
  given!(:apartment_rent) { create(:apartment, option: "rent", user_id: user.id) }
  given!(:apartment_daily) { create(:apartment, option: "daily", user_id: user.id) }

  scenario "user can see all data one sale" do
    visit root_path
    click_on 'Sale apartments'
    click_on apartment_sale.description
    
    expect(page).to have_content apartment_sale.square
    expect(page).to have_content apartment_sale.price
    expect(page).to have_content apartment_sale.price_meter
    expect(page).to have_content apartment_sale.description
    expect(page).to have_content apartment_sale.user.name
    expect(page).to have_content apartment_sale.user.number
  end

  scenario "user can see all data one rent" do
    visit root_path
    click_on 'Rent apartments'
    click_on apartment_rent.description
    
    expect(page).to have_content apartment_rent.square
    expect(page).to have_content apartment_rent.price
    expect(page).to have_content apartment_rent.description
    expect(page).to have_content apartment_rent.user.name
    expect(page).to have_content apartment_rent.user.number
  end

  scenario "user can see all data one daily" do
    visit root_path
    click_on 'Daily apartments'
    click_on apartment_daily.description
    
    expect(page).to have_content apartment_daily.square
    expect(page).to have_content apartment_daily.price
    expect(page).to have_content apartment_daily.description
    expect(page).to have_content apartment_daily.user.name
    expect(page).to have_content apartment_daily.user.number
  end
end