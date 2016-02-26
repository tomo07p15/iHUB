class CreateTwigs < ActiveRecord::Migration
  def change
    create_table :twigs do |t|
      t.string    :user_id
      t.text      :twigtext
      t.timestamps 
    end
  end
end
