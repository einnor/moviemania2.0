class RemoveCinemashowingFromComingsoon < ActiveRecord::Migration
  def change
    remove_column :comingsoons, :cinemashowing, :string
  end
end
