class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :nowshowing_id
      t.text :body

      t.timestamps
    end
    add_index :comments, :nowshowing_id
  end
end
