# require_relative 'bike'
# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.
# ```
# DockingStation <--bike--> nil
# DockingStation <--release_bike--> raise error "No bike available"

# ```
# As a maintainer of the system,
# So that I can control the distribution of bikes,
# I'd like docking stations not to accept more bikes than their capacity.

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "There is no bike available!" if bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    @bikes << bike
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