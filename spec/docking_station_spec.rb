require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}

  it { is_expected.to respond_to :release_bike }

  it "release a working bike" do
    bike = station.release_bike
    expect(bike).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    expect(station.dock(bike)).to eq bike
  end

  it "show a docked bike" do
    bike = Bike.new
    station.dock(bike)
    expect(station.bike).to eq bike
  end


end
