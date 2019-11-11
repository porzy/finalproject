# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order, :current_user

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end
