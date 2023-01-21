class AddOrderToBooking < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_reference :acts_as_bookable_bookings, :order
  end
end
