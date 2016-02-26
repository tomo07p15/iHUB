class CreateTwigs < ActiveRecord::Migration
  def change
    create_table :twigs do |t|

      t.timestamps null: false
    end
  end
end
