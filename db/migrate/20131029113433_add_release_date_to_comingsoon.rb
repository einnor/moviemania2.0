class AddReleaseDateToComingsoon < ActiveRecord::Migration
  def change
    add_column :comingsoons, :release_date, :date
  end
end
