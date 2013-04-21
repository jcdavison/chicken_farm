class Farm < ActiveRecord::Base
  has_many :sensors
  
  attr_accessible :name, :tele_id
  has_many :inputs

end
