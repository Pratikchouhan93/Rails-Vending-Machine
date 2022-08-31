#app/models/item.rb       Item Model
class Item < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :quantity, presence: true

  before_validation :normalize_name, on: :create
  # after_touch :normalize_name

  # private

  # def normalize_name
  #   puts self.name
  # end
end
