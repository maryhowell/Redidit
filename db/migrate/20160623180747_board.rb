class Board < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :post_id
      t.integer :user_id
      t.timestamps
    end
  end
end
