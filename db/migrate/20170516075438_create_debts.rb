class CreateDebts < ActiveRecord::Migration[5.1]
  def change
    create_table :debts do |t|
      t.string :name
      t.string :description
      t.decimal :amount
      t.string :category
      t.date :due_date
      t.string :prove
      t.string :warning_unit
      t.integer :warning_count
      t.string :kreditur_id
      t.string :debitur_id

      t.timestamps
    end
  end
end
