class DockingStation
attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock_bike(bike)
    fail 'Docking Station Full' if @bike
    @bike = bike

  end

end

class Bike
  def working?
    true
  end
end
