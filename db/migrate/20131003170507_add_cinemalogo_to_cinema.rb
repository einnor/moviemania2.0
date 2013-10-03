class AddCinemalogoToCinema < ActiveRecord::Migration
  def change
    add_column :cinemas, :cinemalogo, :string
  end
end
