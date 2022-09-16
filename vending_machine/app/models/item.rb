#app/models/item.rb       Item Model
require 'elasticsearch/model'

class Item < ApplicationRecord
  include Searchable 

  belongs_to :user
  #only name as a string field
  validates :name, :price, :quantity, presence: true

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :name 
      indexes :price 
      indexes :quantity 
    end
  end
end
