class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.text :name
      t.integer :price
      t.string :country

      t.timestamps
    end
  end
end
