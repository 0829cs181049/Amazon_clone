# frozen_string_literal: true

# jgklj
class RemoveColumnFromOrder < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :product_id
  end
end
