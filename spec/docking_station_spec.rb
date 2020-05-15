require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}

  describe '#release_bike' do
    it "raises an error when no bike there" do
      expect {station.release_bike}.to raise_error("No bikes avaliable")
    end

    it "release a bike" do
      bike = Bike.new
      station.dock(bike)
      expect(station.release_bike).to eq bike

    end
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
