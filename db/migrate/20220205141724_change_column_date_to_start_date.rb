class ChangeColumnDateToStartDate < ActiveRecord::Migration[6.1]
  def change
    rename_column(:offers, :date, :start_date)
  end
end
