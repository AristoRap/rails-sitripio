class ChangeDataTypeForFee < ActiveRecord::Migration[6.1]
  def change
    change_column(:offers, :fee, :integer)
  end
end
