# frozen_string_literal: true

class Order < ApplicationRecord
  validates :status, :subtotal, :tax, :total_price, presence: true
  belongs_to :user
  has_many :order_items
end
