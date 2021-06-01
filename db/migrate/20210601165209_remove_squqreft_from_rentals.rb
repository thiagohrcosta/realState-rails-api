class RemoveSquqreftFromRentals < ActiveRecord::Migration[6.1]
  def change
    remove_column :rentals, :squqreft, :integer
  end
end
