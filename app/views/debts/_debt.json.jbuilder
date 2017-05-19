json.extract! debt, :id, :name, :description, :amount, :category, :due_date, :prove, :warning_unit, :warning_count, :kreditur_id, :debitur_id, :created_at, :updated_at
json.url debt_url(debt, format: :json)
