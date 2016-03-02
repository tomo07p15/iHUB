class CreateOngoingcomments < ActiveRecord::Migration
  def change
    create_table :ongoingcomments do |t|
      t.text :ongoingcomment
      t.integer :ongoing_id
      t.integer :user_id
      t.timestamps
    end
  end
end