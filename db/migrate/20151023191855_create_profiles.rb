class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :fname
      t.string :lname
      t.string :gender
      t.string :email
      t.string :location
      t.string :work
      t.date :birthday

      t.timestamps null: false
    end
  end
end
