class AddImgsrcToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :imgsrc, :string
  end
end
