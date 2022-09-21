class Post < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
