class ChangeAmountNumberToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :amount_number, :float
  end
end
