# frozen_string_literal: true

class OrderItemsController < ApplicationController
  def index; end

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to root_path
  end

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params['id'])
    @item.update_attribute(:quantity, params['q'])
    @order.save
    redirect_to cart_path
  end
end
