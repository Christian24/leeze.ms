require 'rails_helper'

describe 'Sign up' do
  before(:each) do
    visit root_path
  end
  it ' allows to sign up' do
click_link "Sign up"
    fill_in "user_email", with: "test@test.com"
    fill_in "user_password", with: "sparten123"
    fill_in "user_password_confirmation", with: "sparten123"
    expect {click_button 'Sign up'}.to change {User.count}.by(1)
    expect(page).to have_content "Log out"

  end
end