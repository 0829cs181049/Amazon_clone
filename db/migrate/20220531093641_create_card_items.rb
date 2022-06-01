class CreateCardItems < ActiveRecord::Migration[7.0]
  def change
     create_table :card_items do |t|

      t.timestamps
    end
  end
end
