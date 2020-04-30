require_relative 'bike'
class DockingStation

  def initialize(capacity = 20)
    @number_of_bikes = 0
    @capacity = capacity
    puts capacity
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
    fail "There are #{@number_of_bikes} already docked" if  @number_of_bikes >= 1?
    # else
    #   @number_of_bikes += add_bike
    #   return "There are #{@number_of_bikes} bike(s) in the docking station"


  end

end

london = DockingStation.new
puts london
