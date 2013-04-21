class Farm < ActiveRecord::Base
  attr_accessible :name, :tele_id
  has_many :inputs

end
