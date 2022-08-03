# frozen_string_literal: true

# gkhjjk
class CreateCardItems < ActiveRecord::Migration[7.0]
  def change
    create_table :card_items, &:timestamps
  end
end
