class DockingStation
attr_reader :bikes
# attr_reader :bikes (just add an s)

def initialize
  @bikes = []
end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail 'Docking Station Full' if @bikes.count >= 20
    @bikes << bike
  end

end

class Bike
  def working?
    true
  end
end
