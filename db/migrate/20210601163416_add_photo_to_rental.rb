class AddPhotoToRental < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :main_photo, :string
  end
end
