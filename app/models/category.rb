class Category < ApplicationRecord
  belongs_to :users, class_name: "User", foreign_key: 'users_id'
  has_many :category_details

  validates :name, presence: true, length: { in: 1..50 }
  validates :icon, presence: true
end
