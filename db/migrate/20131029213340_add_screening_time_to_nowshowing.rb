class AddScreeningTimeToNowshowing < ActiveRecord::Migration
  def change
    add_column :nowshowings, :screening_time, :time
  end
end
