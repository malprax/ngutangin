class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.references :user, foreign_key: true
      t.references :debt, foreign_key: true
      # t.integer :chatable_id
      # t.string :chatable_type
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
