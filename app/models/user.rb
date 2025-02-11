class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, length: { minimum: 6 }, uniqueness: true
  validates :name, presence: true, length: { minimum: 4 }
  validates :userID, presence: true, uniqueness: true
  validates :image, presence: false
  validates :password, presence: true
  validates :role, presence: true
  validates :isVerified, presence: true
end
