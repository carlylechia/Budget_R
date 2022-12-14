class Group < ApplicationRecord
  validates :name, :icon, presence: true

  belongs_to :user
  has_many :entities, dependent: :destroy
end
