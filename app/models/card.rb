class Card < ApplicationRecord
  belongs_to :user
  #belongs_to :product
  has_many :line_items
  has_many :products,  through: :line_items

  def sub_total
    sum = 0
    self.line_items.each do |line_item|
      sum+= line_item.total_price
    end
    return sum
  end
end
