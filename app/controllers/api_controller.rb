class ApiController < ApplicationController
  def get_all_data
    @farms = Farm.all
    @farms.each do |farm|
        @sensors = Sensor.find_all_by_farm_id farm.id
        @sensors.each do |sensor|
            url = "http://us01.proxy.teleduino.org/api/1.0/328.php?k=#{farm.tele_id}&r=getDigitalInput&pin=#{sensor.pin_number}"
            get_url = URI(url)
            res = Net::HTTP.get_response(get_url)
            j = JSON.parse(res.body)

            i = Input.new
            i.sensor_id = sensor.id
            i.value = j['response']['values'][0]
            i.save 
        end
    end
  end
end
