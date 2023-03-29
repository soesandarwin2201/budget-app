class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :categories, foreign_key: 'users_id'
  has_many :category_details, foreign_key: 'author_id'
  validates :name, presence: true, length: { in: 1..50 }
end
