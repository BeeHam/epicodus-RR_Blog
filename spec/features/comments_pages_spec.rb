require 'rails_helper'

describe "the comment CRUD process" do
  before do
    @user = User.create(username: "Cat", email: "cat@cat.com", password: "11111111")
    @post = Post.create(title: "Test Title", author: "John Doe", content: "Test content")
    @comment = @user.comments.create(content: "Test content too")
  end

  it "adds a comment to a post", js: true do
    login_user
    visit post_path(@post)
    click_link "Add a comment"
    fill_in "Content", with: "Test content"
    click_on "Submit"
    expect(page).to have_content "Test content"
  end

  it "deletes a comment", js: true do
    login_user
    visit post_path(@post)
    click_link "Add a comment"
    fill_in "Content", with: "Test content"
    click_on "Submit"
    click_link "Delete"
    expect(page).to have_no_content("Test content")
  end

  it "edits a comment" do
    login_user
    visit post_path(@post)
    click_link "Add a comment"
    fill_in "Content", with: "Test content"
    click_on "Submit"
    click_link "Edit"
    fill_in "Content", with: "Edited test content"
    click_on "Submit"
    expect(page).to have_content "Edited test content"
  end

  def login_user
    visit root_path
    click_link "Login"
    fill_in "Username", with: "cat"
    fill_in "Password", with: "11111111"
    click_on "Log in"
  end
end
