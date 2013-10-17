class AddReservationcodeToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :reservationcode, :string
  end
end
