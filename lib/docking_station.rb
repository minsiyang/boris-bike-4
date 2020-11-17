# require_relative 'bike'
# As a maintainer of the system,
# So that I can control the distribution of bikes,
# I'd like docking stations not to accept more bikes than their capacity.
# ```
# DockingStation <--dock(bike)--> raise error "Station is full"

# ```
# As a system maintainer,
# So that I can plan the distribution of bikes,
# I want a docking station to have a default capacity of 20 bikes.

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
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