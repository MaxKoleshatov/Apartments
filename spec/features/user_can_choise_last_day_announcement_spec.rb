require 'rails_helper'

feature 'user can choise last day announcement if click' do
  given!(:user) { create(:user) } 

  given!(:apartment_sale_1) { create(:apartment, option: "sale", user_id: user.id, created_at: (Time.now - 2.day)) }
  given!(:apartment_sale_2) { create(:apartment, option: "sale", user_id: user.id, created_at: (Time.now - 1.day)) }
  given!(:apartment_sale_3) { create(:apartment, option: "sale", user_id: user.id) }

  given!(:apartment_rent_1) { create(:apartment, option: "rent", user_id: user.id, created_at: (Time.now - 2.day)) }
  given!(:apartment_rent_2) { create(:apartment, option: "rent", user_id: user.id, created_at: (Time.now - 1.day)) }
  given!(:apartment_rent_3) { create(:apartment, option: "rent", user_id: user.id) }

  given!(:apartment_daily_1) { create(:apartment, option: "daily", user_id: user.id, created_at: (Time.now - 2.day)) }
  given!(:apartment_daily_2) { create(:apartment, option: "daily", user_id: user.id, created_at: (Time.now - 1.day)) }
  given!(:apartment_daily_3) { create(:apartment, option: "daily", user_id: user.id) }
  

  scenario "user can choise last day sale announcement if click" do
    sign_in(user)
    click_on 'Sale apartments'
    click_on 'Last Day'
    
    expect(page).to_not have_content apartment_sale_1.description
    expect(page).to_not have_content apartment_sale_2.description
    expect(page).to have_content apartment_sale_3.description
  end

  scenario "user can choise last day rent announcement if click" do
    sign_in(user)
    click_on 'Rent apartments'
    click_on 'Last Day'
    
    expect(page).to_not have_content apartment_rent_1.description
    expect(page).to_not have_content apartment_rent_2.description
    expect(page).to have_content apartment_rent_3.description
  end

  scenario "user can choise last day daily announcement if click" do
    sign_in(user)
    click_on 'Daily apartments'
    click_on 'Last Day'
    
    expect(page).to_not have_content apartment_daily_1.description
    expect(page).to_not have_content apartment_daily_2.description
    expect(page).to have_content apartment_daily_3.description
  end
end