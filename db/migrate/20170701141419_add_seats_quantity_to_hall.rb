class AddSeatsQuantityToHall < ActiveRecord::Migration[5.0]
  def change
    add_column :halls, :seats_quantity, :integer, null: false
  end
end
