# frozen_string_literal: true

class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :cart, dependent: :destroy
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
