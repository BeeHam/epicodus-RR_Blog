class Post < ActiveRecord::Base
  has_many :comments
  acts_as_taggable

  validates :content, presence: true
  validates :title, presence: true
  validates :author, presence: true
end
