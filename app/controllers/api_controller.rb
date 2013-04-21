class ApiController < ApplicationController
  def get_all_data
    state = 'NONE'

    @farms = Farm.all
    @farms.each do |farm|
        @sensors = Sensor.find_all_by_farm_id farm.id
        @sensors.each do |sensor|
            url = "http://us01.proxy.teleduino.org/api/1.0/328.php?k=#{farm.tele_id}&r=getDigitalInput&pin=#{sensor.pin_number}"
            get_url = URI(url)
            res = Net::HTTP.get_response(get_url)
            j = JSON.parse(res.body)

            puts "STATUS ***********************************"
            puts j['status']

            if j['status'] == 403
                puts "yo"
                render :status => 403, :json => {'message' => 'at least one of the sensors are offline'} and return
            elsif j['status'] == 200
                i = Input.new
                i.sensor_id = sensor.id
                sensor_value = j['response']['values'][0]

                if sensor.pin_number == 2
                    i.value = sensor_value
                elsif sensor.pin_number == 3
                    sensor_value == 0 ? i.value = 1 : i.value = 0
                end

                i.save ? state = 'SAVED' : nil
            end
        end
    end

    if state == 'SAVED'
        render :status => 200, :json => {'message' => 'all data retrieved'} and return
    else
        render :status => 500, :json => {'message' => 'data fail'} and return
    end
  end

  def status
    render :status => 200, :json => {'message' => 'api is up and running'}
  end


end
