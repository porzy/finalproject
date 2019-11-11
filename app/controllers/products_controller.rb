# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    if params[:search]
      case params['options'].to_i
      when 1
        product = Product.where('title LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page])
        @products = product || Product.order(:name).page(params[:page])
      when 2
        product = Product.joins(:category).where('categories.name LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page])
        @products = product || Product.order(:name).page(params[:page])
      end

    else
      @products = Product.order(:name).page(params[:page])
    end
    @order_item = current_order.order_items.new
  end

  def category
    case params[:id].to_i
    when 1
      product = Product.joins(:category).where('categories.name LIKE ?', '%propane%').order(:name).page(params[:page])
      @products = product || Product.order(:name).page(params[:page])
    when 2
      product = Product.joins(:category).where('categories.name LIKE ?', '%accessories%').order(:name).page(params[:page])
      @products = product || Product.order(:name).page(params[:page])
    end
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find_by_id(params[:id])
    @order_item = current_order.order_items.new
  end

  def product_params
    params.require(:product).permit(:name, :search)
  end
end
