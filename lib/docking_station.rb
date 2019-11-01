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
      @bikes.pop
    end
  end

  def dock_bike(bike)
    fail "full" unless @bikes.count < 20
    @bikes.push(bike)
  end

end
