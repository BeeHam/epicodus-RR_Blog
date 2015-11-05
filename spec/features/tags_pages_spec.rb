require 'rails_helper'

describe "tags path process" do
  before do
    @post = Post.create(title: "Test Title", author: "John Doe", content: "Test content", tag_list: "testTag")
  end

  it "shows all tagged posts" do
    visit root_path
    click_link "testTag"
    expect(page).to have_content "Test Title"
  end
end
