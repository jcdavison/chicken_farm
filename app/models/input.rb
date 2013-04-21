class Input < ActiveRecord::Base
  belongs_to :sensor
  
  attr_accessible :value
end
