class CreateItemTable < ActiveRecord::Migration[7.0]
  def change
    create_table :item_tables do |t|
      t.string :item_name
      t.string :item_id
      t.string :owner_id
      t.string :borrower_id
      t.timestamps
    end
  end
end
