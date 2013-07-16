class Resutarant < ActiveRecord::Base
  belongs_to :category
  attr_accessible :chairs, :location, :menu, :name, :summary
end
