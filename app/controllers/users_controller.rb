# frozen_string_literal: true

class UsersController < ApplicationController
  def login
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.now[:alert] = 'Email or password is invalid'
      render 'login'
    end
  end

  def create; end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
