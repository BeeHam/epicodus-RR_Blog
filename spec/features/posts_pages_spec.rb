require 'rails_helper'

describe "the post CRUD process" do
  it "adds a post" do
    login_user
    click_link "Add a Post"
    fill_in "Title", with: "Test Title"
    fill_in "Author", with: "John Doe"
    fill_in "Content", with: "Test content"
    click_on "Create Post"
    expect(page).to have_content "Test Title"
  end

  def login_user
    visit root_path
    click_link "Login"
    fill_in "Username", with: "Admin User"
    fill_in "Password", with: "password"
    click_on "Log in"
  end
end
