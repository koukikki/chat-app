class Room < ApplicationRecord

  has_many :room_users, despendent: :destroy
  has_many :users, through: :room_users
  has_many :messages, despendent: :destroy

  validates :name, presence: true
end
