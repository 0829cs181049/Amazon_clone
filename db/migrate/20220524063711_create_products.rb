# frozen_string_literal: true

# jkjhewr
class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.decimal :price
      t.timestamps
    end
  end
end
