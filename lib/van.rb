class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def collect_broken_bikes(broken_bikes)
    @bikes += broken_bikes
  end

  def deliver_broken_bikes
    @bikes.delete_if { |bike| bike.working? == false }
  end
end