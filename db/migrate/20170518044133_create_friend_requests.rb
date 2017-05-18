class CreateFriendRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :friend_requests do |t|
      t.references :user, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :status
      t.string :request_token

      t.timestamps
    end
  end
end
