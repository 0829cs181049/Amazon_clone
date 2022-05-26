class Product < ApplicationRecord
  has_one_attached :picture
  has_many :reviews, dependent: :destroy
  has_many :line_items
  has_many :cards, through: :line_items
end
