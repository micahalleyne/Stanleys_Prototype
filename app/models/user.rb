class User < ApplicationRecord
  has_many :blogs
  has_many :videos
  has_many :songs
  has_many :forums
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
