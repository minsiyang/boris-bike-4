require_relative "bike"

class DockingStation
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "There is no bike available!" if empty?
    raise "Can't release broken bike!" if broken?
    bikes.pop
  end

  def dock(bike)
    raise "Docking Station is FULL!" if full?
    bikes << bike
  end
  
  private

  attr_reader :bikes

  def empty?
    bikes.empty?
  end

  def full?
    bikes.length == capacity
  end

  def broken?
    bikes.last.working? == false
  end
end