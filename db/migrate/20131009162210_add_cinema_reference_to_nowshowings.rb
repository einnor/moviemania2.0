class AddCinemaReferenceToNowshowings < ActiveRecord::Migration
  def change
    add_column :nowshowings, :cinema_id, :integer
  end
end
