class CategoryDetail < ApplicationRecord
  load_and_authorize_resource
  belongs_to :users
  belongs_to :categories
  validates :name, presence: true
  validates :amount, presence: true
end
