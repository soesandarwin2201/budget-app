class Category < ApplicationRecord
  belongs_to :users
  has_many :categoryDetail

  validates :name, presence: true, length: { in: 1..50 }
  validates :icon, presence: true
end
