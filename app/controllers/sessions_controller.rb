class SessionsController < ApiController

  def create
    if find_user && valid_password?
      sign_in @user
    else
      auth_error!
    end

    render :json => { :auth_token => @user.id }
  end

  def destroy
    #TODO
  end

  private

  def auth_error!
    throw :warden, :scope => :user
  end

  def find_user
    @user = User.find_for_authentication(:email => params[:email])
  end

  def valid_password?
    @user.valid_password?(params[:password])
  end
end
