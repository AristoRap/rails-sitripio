class AddTitleToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :title, :string
  end
end
