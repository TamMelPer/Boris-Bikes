class DockingStation
#attr_reader :bikes
# attr_reader :bikes (just add an s)
DEFAULT_CAPACITY = 20

def initialize
  @bikes = []
end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail 'Docking Station Full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end

class Bike
  def working?
    true
  end
end
