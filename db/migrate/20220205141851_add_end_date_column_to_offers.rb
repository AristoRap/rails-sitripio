class AddEndDateColumnToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column(:offers, :end_date, :date)
  end
end
