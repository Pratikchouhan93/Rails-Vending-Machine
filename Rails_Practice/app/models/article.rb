class Article < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  has_many :comments
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  index_name([Rails.env,base_class.to_s.pluralize.underscore].join('_'))
  # index_name Rails.application.class.parent_name.underscore
  # document_type self.name.downcase
end
