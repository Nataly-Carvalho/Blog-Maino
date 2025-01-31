class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_one_attached :profile_pic

  has_many :post_users
  has_many :posts, through: :post_users
  has_many :comments, as: :commentable

end
