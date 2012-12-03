class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :token_authenticatable, :registerable
         #:recoverable, :rememberable,:validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :name
  before_save :ensure_authentication_token!
end
