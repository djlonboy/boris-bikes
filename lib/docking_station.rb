require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  def release_bike
  if empty? == true
    raise 'no bikes'
  else
    @bikes.pop
    end
  end

  def dock_bike(bike)
    fail "full" if full? == true
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.count == 0
  end

end
