require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}


  it "responds to release_bike method" do
    expect(station).to respond_to(:release_bike)
  end

  it "release working bikes" do
    expect(station.release_bike).to eq(bike)
  end

end
