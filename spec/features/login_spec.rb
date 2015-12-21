require 'rails_helper'

describe 'Sign in' do
  before(:each) do
    visit root_path
  end
  context "existing user" do
  let!(:user) {FactoryGirl.create(:user)}
  it "allows to sign in" do
    click_link "Sign in"
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: "Sparten123"
    click_button "Sign in"
    expect(page).to have_content "Log out"
  end
  end
end