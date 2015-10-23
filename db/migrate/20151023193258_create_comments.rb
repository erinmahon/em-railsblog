class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :parent_id
      t.string :message

      t.timestamps null: false
    end
  end
end
