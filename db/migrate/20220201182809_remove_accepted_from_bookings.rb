class RemoveAcceptedFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :accepted, :boolean
  end
end
