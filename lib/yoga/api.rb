class Yoga::API < Grape::API

  include ActionView::Helpers

  version 'v1', :using => :header, :vendor => 'yoga'
  format :json

  helpers do

    def warden
      request.env['warden']
    end

    def user_signed_in?
      !!current_user
    end

    def current_user
      @current_user ||= warden.authenticate(:scope => :user)
    end

    def authenticate!
      #Rails.logger.debug "! Change detected: reloading following files:" unless warden.authenticate!
      error!('401 Unauthorized', 401) unless  warden.authenticated?(:scope => :user)
    end
  end

  resource :tokens do

    desc "Log in a user"
    get :create do
      @user = User.find(params[:id])
      @user.reset_authentication_token!
      debugger
      "blah"
    end

    desc "Log out a user" 
    get :destroy do
      @user = User.find(params[:id])
      @user.authentication_token = nil
      @user.save
      redirect_to edit_user_registration_path(@user)
    end
  end

  resource :sessions do
    
    desc "Log in a user"
    post do
      authenticate!
      render :json => { :auth_token => current_user.authentication_token }
    end

    desc "Log out a user" 
    get :destroy do
      @user = User.find(params[:id])
      @user.authentication_token = nil
      @user.save
      redirect_to edit_user_registration_path(@user)
    end
  end
end
