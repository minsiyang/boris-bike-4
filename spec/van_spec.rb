require "van"

RSpec.describe Van do
  let(:broken_bike) { instance_double("Bike", working?: false) }
  it "can collect broken bikes and deliver them to garage" do
    van = Van.new
    broken_bikes = [broken_bike, broken_bike, broken_bike]
    van.collect_broken_bikes(broken_bikes)
    expect(van.bikes.length).to eq(3)
    van.deliver_broken_bikes
    expect(van.bikes.length).to eq(0)
  end
end