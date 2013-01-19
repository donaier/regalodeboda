class Candidato < ActiveRecord::Base

  validates_presence_of :name, :number_of_persons

  attr_accessible :name, :text, :number_of_persons
end
