class Card < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :line_items
  has_many :products  through: :line_items
end
