class AddScreeningTimeToNowshowing < ActiveRecord::Migration
  def change
    add_column :nowshowings, :screening_time, :text
  end
end
