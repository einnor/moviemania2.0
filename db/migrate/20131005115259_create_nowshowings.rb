class CreateNowshowings < ActiveRecord::Migration
  def change
    create_table :nowshowings do |t|
      t.string :title
      t.text :synopsis
      t.string :youtubestub
      t.decimal :price
      t.string :cinemashowing

      t.timestamps
    end
  end
end
