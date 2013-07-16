class Restaurant < ActiveRecord::Base
   belongs_to :category

  has_many :users, through: :roles

  has_many :roles


  scope :owner, where("#{self.users}.where(role: 'owner')")

  attr_accessible :chairs, :location, :menu, :name, :summary
end
