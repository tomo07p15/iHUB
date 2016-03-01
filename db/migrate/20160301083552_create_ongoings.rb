class CreateOngoings < ActiveRecord::Migration
  def change
    create_table :ongoings do |t|
      t.string              :projectname
      t.string              :projectslide
      t.text                :insight
      t.integer             :user_id
      t.string              :summary
      t.string              :image
      t.timestamps
    end
  end
end
