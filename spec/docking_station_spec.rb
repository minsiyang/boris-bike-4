require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}


  it "responds to release_bike method" do
    expect(station).to respond_to(:release_bike)
  end

  it "release working bikes" do
    bike = station.release_bike
    expect(bike).to be_working
  end

  it "responds to dock method" do
    expect(station).to respond_to(:dock).with(1).argument
  end

end
