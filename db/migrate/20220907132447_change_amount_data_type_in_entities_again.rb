class ChangeAmountDataTypeInEntitiesAgain < ActiveRecord::Migration[7.0]
  def change
    change_column :entities, :amount, :integer
  end
end
