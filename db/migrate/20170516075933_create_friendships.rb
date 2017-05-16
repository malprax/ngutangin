class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships do |t|
      t.int :user_a_id
      t.int :user_b_id
      t.string :status

      t.timestamps
    end
    add_index :friendships, :user_a_id
    add_index :friendships, :user_b_id
  end
end
