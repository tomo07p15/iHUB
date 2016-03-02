class AddDeleteongoingToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :ongoingcomment, :text
    remove_column :comments, :ongoing_id, :integer
  end
end
