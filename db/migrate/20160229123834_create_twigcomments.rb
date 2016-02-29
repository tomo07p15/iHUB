class CreateTwigcomments < ActiveRecord::Migration
  def change
    create_table :twigcomments do |t|
      t.integer :user_id
      t.integer :twig_id
      t.text :text
      t.timestamps
    end
  end
end
