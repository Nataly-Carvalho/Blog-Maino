class Post < ApplicationRecord
  has_many :post_users
  has_many :users, through: :post_users
  has_many :comments, as: :commentable
  has_many_attached :attachments

  validates :body, presence: true
  validates :title, presence: true
end
