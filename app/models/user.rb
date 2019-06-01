class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy
  has_many :bookshop, through: :comments
  has_many :likes, dependent: :destroy
  has_many :like_bookshops, through: :likes, source: :bookshop

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, uniqueness: {case_sensitive: false}

end
