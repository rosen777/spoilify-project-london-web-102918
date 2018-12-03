class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.text :name
      t.string :description
      t.integer :personoutreach
      t.string :country

      t.timestamps
    end
  end
end
