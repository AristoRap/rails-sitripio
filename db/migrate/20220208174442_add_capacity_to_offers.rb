class AddCapacityToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :capacity, :integer
  end
end
