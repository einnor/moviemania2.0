class CreateForumcomingsoons < ActiveRecord::Migration
  def change
    create_table :forumcomingsoons do |t|
      t.integer :comingsoon_id
      t.text :body

      t.timestamps
    end
    add_index :forumcomingsoons, :comingsoon_id
  end
end
