require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes == []
      raise 'no bikes'
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    @bikes.push(bike)
  end

end
