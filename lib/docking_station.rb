require_relative 'bike'
class DockingStation

  def initialize(capacity = 20)
    @number_of_bikes = 0
    @capacity = capacity
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
    fail 'Docking station full' if @number_of_bikes >= 20
    @number_of_bikes += add_bike
  end

    # if @number_of_bikes >= 20
    #   return "Capacity full, there are #{@number_of_bikes} bike(s) in the docking station."
    # else
    #   @number_of_bikes += add_bike
    #   return "Bike added to dock, there are #{@number_of_bikes} docked here."
    # end

end

london = DockingStation.new
puts london.dock(1)
