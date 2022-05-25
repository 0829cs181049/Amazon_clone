class Product < ApplicationRecord
  has_one_attached :picture
  has_many :reviews
end
