require_relative "bike"

class DockingStation
attr_reader :bike

    def release_bike
      bike = Bike.new
    end

    def dock(bike)
        @bike = bike
        #@bike
    end

end


#p docking_station = DockingStation.new
#p docking_station.bike