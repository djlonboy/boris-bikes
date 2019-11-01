require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_reader :capacity

  def initialize(num)
    if num == nil
      @capacity = DEFAULT_CAPACITY
    else
      @capacity = num
    end
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
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.count == 0
  end

end
