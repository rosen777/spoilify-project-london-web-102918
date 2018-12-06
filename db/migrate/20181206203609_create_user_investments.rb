class CreateUserInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_investments do |t|
      t.references :investment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
