require 'rails_helper'

feature 'The user can create announcement' do
  describe 'Authenticated user' do
    given!(:user) { create(:user) }
    
    scenario 'Authenticated user can create a sale announcement ' do
      sign_in(user)
      click_on "Sale apartment"
      click_on "Create new apartment"     
      fill_in 'Square', with: 'SATest'
      fill_in 'Price', with: 'PAtest'
      fill_in 'Price meter', with: 'PSMATest'
      fill_in 'Option', with: 'sale'
      fill_in 'Description', with: 'Dtest'

      click_on 'Create'
      expect(page).to have_content 'You have created sale announcement'
    end

    scenario 'Authenticated user can create a rent announcement ' do
      sign_in(user)
      click_on "Rent apartment"
      click_on "Create new apartment"     
      fill_in 'Square', with: 'SATest'
      fill_in 'Price', with: 'PMAtest'
      fill_in 'Option', with: 'rent'
      fill_in 'Description', with: 'Dtest'
      click_on 'Create'
      expect(page).to have_content 'You have created rent announcement'
    end

    scenario 'Authenticated user can create a daily announcement ' do
      sign_in(user)
      click_on "Daily apartment"
      click_on "Create new apartment"     
      fill_in 'Square', with: 'SATest'
      fill_in 'Price', with: 'PDAtest'
      fill_in 'Option', with: 'daily'
      fill_in 'Description', with: 'Dtest'

      click_on 'Create'
      expect(page).to have_content 'You have created daily announcement'
    end
  end

  describe 'Unregistered user' do
    given!(:user) { create(:user) }

    scenario "Unregistered user cant create a new sale announcement" do
      visit root_path
      click_on "Sale apartment"
      expect(page).not_to have_link 'Create new apartment'
    end
    
    scenario "Unregistered user cant create a new rent announcement" do
      visit root_path
      click_on "Rent apartment"
      expect(page).not_to have_link 'Create new apartment'
    end

    scenario "Unregistered user cant create a new daily announcement" do
      visit root_path
      click_on "Daily apartment"
      expect(page).not_to have_link 'Create new apartment'
    end
  end
end