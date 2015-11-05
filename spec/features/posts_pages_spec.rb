require 'rails_helper'


describe "the post CRUD process" do
  before do
    @user = User.create(username: "Admin User", email: "admin@admin.com", password: "password", admin: true)
    @post = Post.create(title: "Test Title", author: "John Doe", content: "Test content")
    @comment = @user.comments.create(content: "Test content too")
  end

  it "adds a post" do
    login_user
    click_link "Add a Post"
    fill_in "Title", with: "Another Test Title"
    fill_in "Author", with: "John Doe"
    fill_in "Content", with: "Test content"
    click_on "Create Post"
    expect(page).to have_content "Another Test Title"
  end

  it "edits a post" do
    login_user
    visit post_path(@post)
    click_link "Edit"
    fill_in "Title", with: "Edited Test Title"
    click_on "Update Post"
    expect(page).to have_content "Edited Test Title"
  end

  it "deletes a post" do
    login_user
    visit post_path(@post)
    click_link "Delete"
    expect(page).to have_no_content("Test Title")
  end

  def login_user
    visit root_path
    click_link "Login"
    fill_in "Username", with: "Admin User"
    fill_in "Password", with: "password"
    click_on "Log in"
  end
end
