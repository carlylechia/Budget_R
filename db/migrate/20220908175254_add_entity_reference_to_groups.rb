class AddEntityReferenceToGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :entity, foreign_key: true
  end
end
