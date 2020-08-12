require_relative 'bike'

class DockingStation
  
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No bike available" if empty?
    raise "No bike available" if broke?
    bikes.pop
  end

  def dock(bike)
    fail "Station is full" if full?
    bikes << bike
  end
 
private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

  def broke?
    bikes.last.broken?
  end
end