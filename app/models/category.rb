class Category < ApplicationRecord
  load_and_authorize_resource
  belongs_to :users
  has_many :categoryDetail

  validates :name, presence: true, length: { in: 1..50 }
  validates :icon, presence: true
end
