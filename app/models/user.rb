class User < ApplicationRecord
  # after_initialize :init
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, counter_cache: true
  has_many :entities

  # private

  # def init
  #   self.groups_count ||= 0
  #   true
  # end
end
