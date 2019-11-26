class RemoveBookingTimeFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_time, :datetime
  end
end
