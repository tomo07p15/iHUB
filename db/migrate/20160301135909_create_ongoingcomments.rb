class CreateOngoingcomments < ActiveRecord::Migration
  def change
    create_table :ongoingcomments do |t|

      t.timestamps null: false
    end
  end
end
