class AddNoOfTimesPerDayToNowshowing < ActiveRecord::Migration
  def change
    add_column :nowshowings, :no_of_times_per_day, :integer
  end
end
