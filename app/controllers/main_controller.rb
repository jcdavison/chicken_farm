class MainController < ApplicationController
  def index

  end
  
  def test
    # Array of the last 10 (value, datetime) for each sensor
    @inputs1 = Sensor.find(1).inputs.take(5)
    #@inputs2 = Sensor.find(2).inputs.take(5)
    
  end
end
