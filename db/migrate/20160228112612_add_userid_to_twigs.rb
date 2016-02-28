class AddUseridToTwigs < ActiveRecord::Migration
  def change
    remove_column :twigs, :user_id, :text
    add_column :twigs, :user_id, :string
  end
end
