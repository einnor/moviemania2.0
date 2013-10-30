class RemoveReleaseDateFromComingsoon < ActiveRecord::Migration
  def change
    remove_column :comingsoons, :release_date, :string
  end
end
