class MainController < ApplicationController
  def index

  end
  
  def test
    # Array of the last 10 (value, datetime) for each sensor
    @inputs1 = Input.find_all_by_sensor_id(1)
    # @data1 = [ [Date.today.to_time.to_i , 1], [Date.today.to_time.to_i + 2, 5] ]
    @data1 = []

    puts @inputs1

    if @inputs1 != nil and @inputs1.empty? == false
      @inputs1.each do |input|
        @data1.push [input.created_at.to_time.to_i, input.value]
      end
    end
    #@inputs2 = Sensor.find(2).inputs.take(5)
    
  end
end
