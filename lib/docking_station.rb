require_relative 'bike'
class DockingStation
  def release_bike
    bike = Bike.new
  end

  def dock(add_bike)
    total = 0
    total += add_bike
    return total
  end


end
