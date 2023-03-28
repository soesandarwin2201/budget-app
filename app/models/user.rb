class User < ApplicationRecord
 has_many :category
 has_many :categoryDetail
 validates :name, presence: true, length: { in: 1..50 }
end
