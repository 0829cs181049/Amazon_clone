# frozen_string_literal: true

# mnf
class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :card
  # belongs_to :order
  # validates :quantity, presence: true

  def total_price
    quantity * product.price
  end
end
