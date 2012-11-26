class Yoga::API < Grape::API

  version 'v1', :using => :header, :vendor => 'yoga'
  format :json

  helpers do
    def current_user
      @current_user ||= User.authorize!(env)
    end

    def authenticate!
      error!('401 Unauthorized', 401) unless current_user
    end
  end

  resource :sessions do
    desc "Log in a user"
    get :create do
      "winning"
    end
  end
end
