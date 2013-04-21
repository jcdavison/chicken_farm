class Farm < ActiveRecord::Base
  has_many :inputs
  
  attr_accessible :name, :tele_id
end
