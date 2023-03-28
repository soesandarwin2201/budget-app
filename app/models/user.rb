class User < ApplicationRecord
 has_many :category
 has_many :categoryDetail
end
