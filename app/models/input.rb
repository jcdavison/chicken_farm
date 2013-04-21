class Input < ActiveRecord::Base
  belongs_to :sensor
  
  attr_accessible :farm_id, :sensor_name, :value
end
