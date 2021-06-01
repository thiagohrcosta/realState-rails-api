class AddContentToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :content, :text
  end
end
