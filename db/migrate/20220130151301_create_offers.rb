class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.text :description
      t.string :location
      t.float :fee
      t.date :date

      t.timestamps
    end
  end
end
