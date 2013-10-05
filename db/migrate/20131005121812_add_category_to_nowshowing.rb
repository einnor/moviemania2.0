class AddCategoryToNowshowing < ActiveRecord::Migration
  def change
    add_column :nowshowings, :category, :string
  end
end
