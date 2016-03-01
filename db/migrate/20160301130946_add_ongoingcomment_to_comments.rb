class AddOngoingcommentToComments < ActiveRecord::Migration
  def change
    add_column :comments, :ongoingcomment, :text
    add_column :comments, :ongoing_id, :integer
  end
end
