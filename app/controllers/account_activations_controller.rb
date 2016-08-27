class AccountActivationsController < ApplicationController
  
  def edit
  	user = User.find_by(email: params[:email])
  	if user && !user.activated? && user.authenticated?(:activation, params[:id])
  	  user.activate
  	  flash[:success] = "Account activated"
  	  log_in user
  	  redirect_to user
  	else
  	  message = "Invalid activation link"
  	  flash[:danger] = message
  	  redirect_to root_url
  	end
  end
end
