class Station
  attr_accessor :name

  def initialize(name)
    @name = name
    @trains_on_station = []  
  end
  
  def come_in_trains(train)
    @trains_on_station << train
  end
  
  def show_train_list
    total_trains_number
  end

  def leave_station(train)
    @trains_on_station.delete(train)
  end

  protected

  def total_trains_number
    puts "Сейчас на станции находятся следующие поезда:"
    @trains_on_station.each  do |train|  puts "Поезд #{train.name} - #{train.train_type} "
    end
    puts "Всего: #{@trains_on_station.length} поезда"
  end
end