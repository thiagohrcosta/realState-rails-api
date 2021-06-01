class AddSquareftToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :squareft, :integer
  end
end
