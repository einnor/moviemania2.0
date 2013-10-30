class AddReleaseDateToComingsoon < ActiveRecord::Migration
  def change
    add_column :comingsoons, :release_date, :string
  end
end
