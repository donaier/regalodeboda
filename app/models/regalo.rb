class Regalo < ActiveRecord::Base

  validates_presence_of :name

  attr_accessible :name, :link, :donor
end
