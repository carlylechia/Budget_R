class AddTextToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :description, :text
  end
end
