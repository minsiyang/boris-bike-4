class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def collect_broken_bikes(broken_bikes)
    @bikes += broken_bikes
  end

  
end