class Entity < ApplicationRecord
  validates :name, presence: true
  validates :user_id, :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :user
  has_many :groups, dependent: :destroy
end
