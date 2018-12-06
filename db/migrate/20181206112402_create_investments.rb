class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.string :name
      t.integer :price
      t.string :sector
      t.references :purchase, foreign_key: true
    end
  end
end
