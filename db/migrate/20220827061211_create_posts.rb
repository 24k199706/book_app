class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :content
      t.string :title
      t.boolean :delete_flg
      t.string :image

      t.timestamps
    end
  end
end
