class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false, default: "", index: true
      t.string :icon
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
