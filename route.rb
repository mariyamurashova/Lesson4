class Route 
attr_accessor :stations

  def initialize(first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    @stations = [@first_station, @last_station]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station)
    @stations.compact
  end

  def show_route
    print "Маршрут:  " 
    @stations.each {|station| print "#{station.name} > "}
    puts " "
  end
end
