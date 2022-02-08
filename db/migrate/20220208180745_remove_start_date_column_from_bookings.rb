class RemoveStartDateColumnFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :start_date
  end
end
