class AddComingsooncoverToComingsoon < ActiveRecord::Migration
  def change
    add_column :comingsoons, :comingsooncover, :string
  end
end
