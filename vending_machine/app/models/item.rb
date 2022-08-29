class Item < ApplicationRecord
  belongs_to :user

  validates :name, :price, presence: true
  validates :quantity, presence: true
end
