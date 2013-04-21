class Input < ActiveRecord::Base
  belongs_to :farm
  
  attr_accessible :farm_id, :sensor_name, :value
end
