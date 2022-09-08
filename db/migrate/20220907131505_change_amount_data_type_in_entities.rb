class ChangeAmountDataTypeInEntities < ActiveRecord::Migration[7.0]
  def change
    change_column :entities, :amount, :decimal
  end
end
