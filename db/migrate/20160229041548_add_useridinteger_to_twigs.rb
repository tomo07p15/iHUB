class AddUseridintegerToTwigs < ActiveRecord::Migration
  def change
    remove_column :twigs, :user_id, :string
    add_column :twigs, :user_id, :integer
  end
end
