class AddImgsrcToInvestments < ActiveRecord::Migration[5.2]
  def change
    add_column :investments, :imgsrc, :string
  end
end
