class Post < ActiveRecord::Migration
  def change
    create_table :post do |t|
      t.string :title
      t.string :content
      t.integer :board_id
      t.integer :user_id
      t.timestamps
    end
  end
end
