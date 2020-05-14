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

  it "when pass bike it returns bike" do
    bike = Bike.new
    expect(station.dock(bike)).to eq bike
  end

  it "respond to bike method" do
    expect(station).to respond_to(:bike)
  end

  it "returns docked bike" do
    bike = Bike.new
    station.dock(bike)
    expect(station.bike).to eq bike
  end
end
