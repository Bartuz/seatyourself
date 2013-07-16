class User < ActiveRecord::Base
  attr_accessible :email, :password_hash, :points, :username

  has_many :restaurants, through: :roles

  has_many :roles

end
