class RemoveCinemashowingFromNowshowing < ActiveRecord::Migration
  def change
    remove_column :nowshowings, :cinemashowing, :string
  end
end
