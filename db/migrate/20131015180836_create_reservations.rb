class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :fname
      t.string :sname
      t.string :email
      t.string :phone
      t.string :ip_address
      t.string :card_type
      t.date :card_expires_on
      t.string :card_number
      t.string :card_verification

      t.timestamps
    end
  end
end
