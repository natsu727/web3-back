class CreateSample < ActiveRecord::Migration[7.0]
  def change
    create_table :Practices do |t|
      t.string :name
      t.timestamps
    end
  end
end
