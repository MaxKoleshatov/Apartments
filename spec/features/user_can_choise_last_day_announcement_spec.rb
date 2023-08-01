require 'rails_helper'

feature 'user can choise last day announcement if click' do
  given!(:user) { create(:user) } 

  given!(:sale_apartment_1) { create(:sale_apartment, user_id: user.id, created_at: (Time.now - 2.day)) }
  given!(:sale_apartment_2) { create(:sale_apartment, user_id: user.id, created_at: (Time.now - 1.day)) }
  given!(:sale_apartment_3) { create(:sale_apartment, user_id: user.id) }

  given!(:rent_apartment_1) { create(:rent_apartment, user_id: user.id, created_at: (Time.now - 2.day)) }
  given!(:rent_apartment_2) { create(:rent_apartment, user_id: user.id, created_at: (Time.now - 1.day)) }
  given!(:rent_apartment_3) { create(:rent_apartment, user_id: user.id) }

  given!(:daily_apartment_1) { create(:daily_apartment, user_id: user.id, created_at: (Time.now - 2.day)) }
  given!(:daily_apartment_2) { create(:daily_apartment, user_id: user.id, created_at: (Time.now - 1.day)) }
  given!(:daily_apartment_3) { create(:daily_apartment, user_id: user.id) }
  

  scenario "user can choise last day sale announcement if click" do
    sign_in(user)
    click_on 'Sale apartments'
    click_on 'Last Day'
    
    expect(page).to_not have_content sale_apartment_1.description_sale
    expect(page).to_not have_content sale_apartment_2.description_sale
    expect(page).to have_content sale_apartment_3.description_sale
  end

  scenario "user can choise last day rent announcement if click" do
    sign_in(user)
    click_on 'Rent apartments'
    click_on 'Last Day'
    
    expect(page).to_not have_content rent_apartment_1.description_rent
    expect(page).to_not have_content rent_apartment_2.description_rent
    expect(page).to have_content rent_apartment_3.description_rent
  end

  scenario "user can choise last day daily announcement if click" do
    sign_in(user)
    click_on 'Daily apartments'
    click_on 'Last Day'
    
    expect(page).to_not have_content daily_apartment_1.description_daily
    expect(page).to_not have_content daily_apartment_2.description_daily
    expect(page).to have_content daily_apartment_3.description_daily
  end
end