# frozen_string_literal: true

# rthhj
class RemoveProductFromCard < ActiveRecord::Migration[7.0]
  def change
    remove_reference :cards, :product, index: true, foreign_key: true
  end
end
