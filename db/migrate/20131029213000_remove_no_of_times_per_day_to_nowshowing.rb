class RemoveNoOfTimesPerDayToNowshowing < ActiveRecord::Migration
  def change
    remove_column :nowshowings, :no_of_times_per_day, :integer
  end
end
