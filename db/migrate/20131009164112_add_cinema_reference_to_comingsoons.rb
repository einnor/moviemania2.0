class AddCinemaReferenceToComingsoons < ActiveRecord::Migration
  def change
    add_column :comingsoons, :cinema_id, :integer
  end
end
