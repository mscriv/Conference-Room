class SessionsController < ApplicationController
  def sign_up
    user = User.new(name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      flash[:notice] = 'You have successfully signed up.'
    else
      flash[:error] = "We were unable to sign you up. #{user.errors.full_messages.join('. ')}."

    end

    redirect_to root_path
  end
end
