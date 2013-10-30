class RemoveScreeningTimeFromNowshowing < ActiveRecord::Migration
  def change
    remove_column :nowshowings, :screening_time, :text
  end
end
