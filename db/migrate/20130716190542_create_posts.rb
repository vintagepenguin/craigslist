class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title
      t.text    :description
      t.string  :email
      t.string  :price 
      t.integer :category_id 

      t.timestamps 

    end 

    add_index :posts, :category_id

  end
end
