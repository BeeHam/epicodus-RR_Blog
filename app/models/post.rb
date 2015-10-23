class Post < ActiveRecord::Base
  has_many :comments

  validates :content, presence: true
  validates :title, presence: true
  validates :author, presence: true
end
