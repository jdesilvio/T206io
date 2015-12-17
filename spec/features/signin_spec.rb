require 'rails_helper'

feature "signing in" do
  let(:confirmed_user) {FactoryGirl.create(:confirmed_user)}

  def fill_in_signin_fields
    fill_in "user[email]", with: confirmed_user.email
    fill_in "user[password]", with: confirmed_user.password
    click_button "Sign in"
  end

  scenario "visiting the site to sign in" do
    visit unauthenticated_root_path
    click_link "Sign In"
    fill_in_signin_fields
    expect(page).to have_content("Signed in successfully.")
  end

end
