class CreateDebts < ActiveRecord::Migration[5.1]
  def change
    create_table :debts do |t|
      t.string :name
      t.string :description
      t.decimal :amount
      t.string :category
      t.date :due_date
      t.string :prove
      t.string :status
      t.string :warning_unit
      t.integer :warning_count
      t.integer :kreditur_id, foreign_key: true
      t.integer :debitur_id, foreign_key: true

      t.timestamps
    end

    add_index :debts, :kreditur_id
    add_index :debts, :debitur_id
  end
end
