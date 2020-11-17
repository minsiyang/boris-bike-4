# require_relative 'bike'
# As a system maintainer,
# So that busy areas can be served more effectively,
# I want to be able to specify a larger capacity when necessary.

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "There is no bike available!" if empty?
    bikes.pop
  end

  def dock(bike)
    raise "Docking Station is FULL!" if full?
    bikes << bike
  end
  
  private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.length == capacity
  end
#   DEFAULT_CAPACITY = 20

#   attr_accessor :capacity

#   def initialize(capacity=DEFAULT_CAPACITY)
#     @capacity = capacity
#     @bikes = []
#   end

#   def release_bike
#     raise "No bike available" if empty?
#     # raise "No bike available" if broke?
#     bikes.pop
#   end

#   def dock(bike)
#     fail "Station is full" if full?
#     bikes << bike
#   end
 
# private

#   attr_reader :bikes

#   def full?
#     bikes.count >= capacity
#   end

#   def empty?
#     bikes.empty?
#   end

#   # def broke?
#   #   bikes.last.broken?
#   # end
end