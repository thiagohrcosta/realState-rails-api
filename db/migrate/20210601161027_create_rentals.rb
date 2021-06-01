class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.string :title
      t.decimal :price
      t.integer :bathroom
      t.integer :bedroom
      t.integer :garage
      t.integer :squqreft
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
