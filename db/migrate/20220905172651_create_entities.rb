class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.money :amount
      t.belongs_to :user, index: true, foreign_key: true, counter_cache: true
      t.belongs_to :group, index: true, foreign_key: true, counter_cache: true

      t.timestamps
    end
  end
end
