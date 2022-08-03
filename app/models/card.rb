# frozen_string_literal: true

# kjnfkj
class Card < ApplicationRecord
  belongs_to :user
  # belongs_to :product
  has_many :line_items, dependent: :destroy
  # has_many :products,  through: :line_items

  def sub_total
    sum = 0
    line_items.each do |line_item|
      sum += line_item.total_price
    end
    sum
  end
end
