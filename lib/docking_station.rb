require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
      raise 'no bikes'
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    fail "full" unless @bike == nil
    @bike = bike
  end

end
