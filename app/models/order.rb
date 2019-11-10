# frozen_string_literal: true

class Order < ApplicationRecord
  # validates :status, :subtotal, :tax, :total_price, presence: true
  belongs_to :user
  has_many :order_items
  before_save :update_total
  before_create :update_status

  def calculate_total
    order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  private

  def update_status
    self.status = 'In progress' if status == nil?
  end

  def update_total
    self.total_price = calculate_total
  end
end
