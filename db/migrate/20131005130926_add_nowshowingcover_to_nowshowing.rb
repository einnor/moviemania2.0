class AddNowshowingcoverToNowshowing < ActiveRecord::Migration
  def change
    add_column :nowshowings, :nowshowingcover, :string
  end
end
