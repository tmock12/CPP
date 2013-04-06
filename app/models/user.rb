class User < ActiveRecord::Base
  include Authem::User
  attr_accessible :email, :name, :password_digest, :session_token
end
