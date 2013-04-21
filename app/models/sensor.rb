class Sensor < ActiveRecord::Base
  belongs_to :farm
  has_many :inputs
  attr_accessible :sensor_type, :pin_number
end
