#app/models/item.rb       Item Model
class Item < ApplicationRecord
  belongs_to :user
  # self.locking_column = :name

  validates :name, presence: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :quantity, presence: true

  # after_initialize :normalize_name
  # after_find :normalize_names
  # after_touch :normalize_name

  # private

  # def normalize_name
  #   puts "initialize"
  # end

  # def normalize_names
  #   puts "find"
  # end
end
