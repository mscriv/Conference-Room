class SessionController < ApplicationController
  skip_before_action :authenticate, only: [:welcome, :signin, :signup]

  def signup
    user = User.new(name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if user.save

      session[:user_id] = user.id
      flash[:notice] = 'You have successfully signed up.'

      redirect_to rooms_path

    else
      flash[:error] = "We were unable to sign you up. #{user.errors.full_messages.join('. ')}."
    end
  end

  def signin
      user = User.find_by(email: params[:email]).try(:authenticate, params[:password])

      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:notice] = 'You have signed in'
        redirect_to rooms_path
      else
        session[:user_id] = nil
        flash[:error] = 'Unable to login with those credentials'
        redirect_to root_path

      end
  end

  def signout
      session[:user_id] = nil
      flash[:warning] = 'You have signed out!'
      redirect_to root_path
  end

end

