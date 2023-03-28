class Category < ApplicationRecord
  belongs_to :users
  has_many :categoryDetail
end
