class AddHeadToEnquiry < ActiveRecord::Migration
  def change
    add_column :enquiries, :head, :string
  end
end
