class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.reference :debt
      t.date :date
      t.string :status
      t.decimal :amount
      t.string :prove

      t.timestamps
    end
  end
end
