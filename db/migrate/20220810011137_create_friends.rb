class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.integer :friend_user_id
      t.boolean :approved, :default => false

      t.timestamps
    end
  end
end
