class AddZenBookingToBooking < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_reference :acts_as_bookable_bookings, :zen_booking, polymorphic: true, index: { name: :index_acts_as_bookable_booking_on_zen_booking, algorithm: :concurrently }, _uses_legacy_reference_index_name: true
  end
end
