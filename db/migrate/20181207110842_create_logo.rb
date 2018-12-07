class CreateLogo < ActiveRecord::Migration[5.2]
  def change
    create_table :logos do |t|
      t.string :imgurl
    end
  end
end
