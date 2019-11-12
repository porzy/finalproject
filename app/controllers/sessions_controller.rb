# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user.password == params[:password]
      session[:user_id] = user.id
      redirect_to user
    else
      flash.now[:danger] = 'Bad email/password combination. Try again.'
      render 'new'
    end
  end

  def delete
    session.delete(:user_id, :order_id)
    @current_user = nil
    redirect_to root
  end
end
