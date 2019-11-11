# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page])
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find_by_id(params[:id])
    @order_item = current_order.order_items.new
  end
end
