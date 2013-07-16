class User < ActiveRecord::Base
  attr_accessible :email, :password_hash, :points, :username
end
