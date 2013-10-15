class CreateReservationtransactions < ActiveRecord::Migration
  def change
    create_table :reservationtransactions do |t|
      t.string :action
      t.integer :amount
      t.boolean :success
      t.string :authorization
      t.string :message
      t.text :params
      t.integer :reservation_id

      t.timestamps
    end
    add_index :reservationtransactions, :reservation_id
  end
end
