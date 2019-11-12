# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def checkout
    @order_items = current_order.order_items
  end

  def invoice
    @order_items = current_order.order_items
  end

  def update_quantity
    @order_item.update_attribute(:quantity)
  end
end
