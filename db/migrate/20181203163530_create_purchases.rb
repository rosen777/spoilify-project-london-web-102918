class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.text :name
      t.integer :price
      t.string :country

      t.timestamps
    end
  end
end
