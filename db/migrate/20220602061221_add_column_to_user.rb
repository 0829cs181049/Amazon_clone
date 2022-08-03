# frozen_string_literal: true

# jglrtg
class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :string
    add_column :users, :phone_number, :integer
    add_column :users, :pincode, :integer
  end
end
