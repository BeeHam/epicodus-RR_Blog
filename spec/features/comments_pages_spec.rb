require 'rails_helper'

describe "the comment CRUD process", js: true do
  before do
    @user = User.create(username: "Cat", email: "cat@cat.com", password: "11111111")
    @post = Post.create(title: "Test Title", author: "John Doe", content: "Test content")
    @comment = @user.comments.create(content: "Test content too")
  end

  it "adds a comment to a post" do
    login_user
    visit post_path(@post)
    click_link "Add a comment"
    fill_in "Content", with: "Test content"
    click_on "Submit"
    expect(page).to have_content "Test content"
  end

  it "deletes a comment" do
    login_user
    visit post_path(@post)
    click_link "Add a comment"
    fill_in "Content", with: "Test content"
    click_on "Submit"
    click_link "Delete"
    expect(page).to have_no_text("Test content")
  end

  def login_user
    visit root_path
    click_link "Login"
    fill_in "Username", with: "cat"
    fill_in "Password", with: "11111111"
    click_on "Log in"
  end
end
