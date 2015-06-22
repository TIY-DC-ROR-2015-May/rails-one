class CreateSpeeches < ActiveRecord::Migration
  def change
    create_table :speeches do |t|
      t.text :words

      t.timestamps null: false
    end
  end
end
