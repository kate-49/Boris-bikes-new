require_relative 'bike'
class DockingStation

  def initialize
    @number_of_bikes = 0
  end

  def bike_released
    bike = Bike.new
  end

  def release_bike
    if @number_of_bikes < 1
      return "There are no bikes here."
    else
      @number_of_bikes -= 1
      bike_released
    end
  end

  def dock(add_bike = 0)
    @number_of_bikes += add_bike
    return "There are #{@number_of_bikes} bike(s) in the docking station"
  end

end

# london = DockingStation.new
# london.dock(2)
# puts london.dock
