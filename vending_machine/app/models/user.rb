# frozen_string_literal: true

class User < ApplicationRecord
  has_many :items
  self.inheritance_column = 'kind_of_user'
  # enum :role, [ :admin, :customer ]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    type == 'Admin'
  end

  def customer?
    type == 'Customer'
  end
end
