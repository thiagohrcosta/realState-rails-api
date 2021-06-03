class AddPhotosToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :photo_one, :string
    add_column :rentals, :photo_two, :string
    add_column :rentals, :photo_three, :string
  end
end
