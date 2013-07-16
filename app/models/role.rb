class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  attr_accessible :role
end
