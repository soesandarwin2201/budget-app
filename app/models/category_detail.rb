class CategoryDetail < ApplicationRecord
  belongs_to :users
  belongs_to :categories
  validates :name, presence: true
  validates :amount, presence: true
end
