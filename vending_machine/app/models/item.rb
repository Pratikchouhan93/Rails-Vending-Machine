#app/models/item.rb       Item Model
require 'elasticsearch/model'

class Item < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :user
  # self.locking_column = :name

  validates :name, :price, :quantity, presence: true

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
