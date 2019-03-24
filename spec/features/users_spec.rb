require 'rails_helper'

RSpec.feature "Users", type: :feature do
  scenario "Signupページにページ遷移できるか" do
    visit root_path
    click_on "Sign up"
    expect(page).to have_content("Sign up")
  end

  scenario "ユーザー登録できること" do
    user = build(:user)
    visit new_user_path
    expect {
      fill_in "Name", with: user.name
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      fill_in "Confirmation", with: user.password_confirmation
      click_button "Create my account"
      }.to change(User, :count).to(35)
  end

  scenario "エラーメッセージが正しく表示されること" do
    visit new_user_path

    fill_in "Name", with: " "
    fill_in "Email", with: " "
    fill_in "Password", with: " "
    fill_in "Confirmation", with: " "
    click_button "Create my account"

    expect(page).to have_content("can't be blank")

  end
end