class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :card


  def total_price
    self.quantity * self.product.price
  end
end
