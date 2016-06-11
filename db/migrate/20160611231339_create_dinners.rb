class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :name
      t.string :image
      t.text :description
      t.decimal :price
      t.references :destination, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
