require 'rails_helper'

feature 'User can sign in' do
  given(:user) {create(:user)}
  
  scenario 'Registered user tries to sign in' do
    sign_in(user)
    expect(page).to have_content 'Signed in successfully.'
  end

  scenario 'Unregistered user tries to sign in' do
    visit new_user_session_path
    fill_in 'Email', with: "wrong@test.com"
    fill_in 'Password', with: '123456'
    click_on 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end
end
