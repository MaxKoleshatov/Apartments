require 'rails_helper'

feature 'The user can create announcement' do
  describe 'Authenticated user' do
    given!(:user) { create(:user) }
    
    scenario 'Authenticated user can create a sale announcement ' do
      sign_in(user)
      click_on "Sale apartment"
      click_on "Create new sale apartment"     
      fill_in 'Square apartment', with: 'SATest'
      fill_in 'Price apartment', with: 'PAtest'
      fill_in 'Price per square meter apartment', with: 'PSMATest'
      fill_in 'Description sale', with: 'Dtest'

      click_on 'Create'
      expect(page).to have_content 'You have created sale announcement'
    end

    scenario 'Authenticated user can create a rent announcement ' do
      sign_in(user)
      click_on "Rent apartment"
      click_on "Create new rent apartment"     
      fill_in 'Square apartment', with: 'SATest'
      fill_in 'Price mount apartment', with: 'PMAtest'
      fill_in 'Description rent', with: 'Dtest'
      click_on 'Create'
      expect(page).to have_content 'You have created rent announcement'
    end

    scenario 'Authenticated user can create a daily announcement ' do
      sign_in(user)
      click_on "Daily apartment"
      click_on "Create new daily apartment"     
      fill_in 'Square apartment', with: 'SATest'
      fill_in 'Price daily apartment', with: 'PDAtest'
      fill_in 'Description daily', with: 'Dtest'
      click_on 'Create'
      expect(page).to have_content 'You have created daily announcement'
    end
  end

  describe 'Unregistered user' do
    given!(:user) { create(:user) }

    scenario "Unregistered user cant create a new sale announcement" do
      visit root_path
      click_on "Sale apartment"
      expect(page).not_to have_link 'Create new sale apartment'
    end
    
    scenario "Unregistered user cant create a new rent announcement" do
      visit root_path
      click_on "Rent apartment"
      expect(page).not_to have_link 'Create new rent apartment'
    end

    scenario "Unregistered user cant create a new daily announcement" do
      visit root_path
      click_on "Daily apartment"
      expect(page).not_to have_link 'Create new daily apartment'
    end
  end
end