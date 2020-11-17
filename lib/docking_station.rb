require_relative "bike"
# As a member of the public,
# So that I reduce the chance of getting a broken bike in future,
# I'd like to report a bike as broken when I return it.
# ```

# ```
# As a maintainer of the system,
# So that I can manage broken bikes and not disappoint users,
# I'd like docking stations not to release broken bikes.
# ```

# ```
# As a maintainer of the system,
# So that I can manage broken bikes and not disappoint users,
# I'd like docking stations to accept returning bikes (broken or not).

class DockingStation
  attr_reader :bikes, :capacity

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

  def empty?
    bikes.empty?
  end

  def full?
    bikes.length == capacity
  end

  def broken?
    bikes.last.working? == false
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