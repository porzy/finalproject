# frozen_string_literal: true

class Customer < ApplicationRecord
  belongs_to :province
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
