class AddOrganizerToOffers < ActiveRecord::Migration[6.1]
  def change
    add_reference :offers, :organizer, null: false, foreign_key: { to_table: :users }
  end
end
