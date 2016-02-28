class AddUserinfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :thumbnail, :string
    add_column :users, :nickname, :string
  end
end
