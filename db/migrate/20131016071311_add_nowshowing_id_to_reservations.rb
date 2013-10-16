class AddNowshowingIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :nowshowing_id, :integer
    add_index :reservations, :nowshowing_id
  end
end
