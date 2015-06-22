class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.integer :zip
      t.integer :favorite_number, default: 7

      t.timestamps null: false
    end
  end
end
