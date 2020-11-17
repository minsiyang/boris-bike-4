require 'docking_station'

RSpec.describe DockingStation do

  let(:working_bike) { instance_double("Bike") }
  let(:broken_bike) { instance_double("Bike", working?: false) }

  it "can release a working bike" do
    station = DockingStation.new
    expect(working_bike).to receive(:working?).and_return(true)
    station.dock(working_bike)
    expect(station.release_bike).to eq(working_bike)
  end

  it "can't release a bike when the station is empty" do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error("There is no bike available!")
  end

  it "can't release broken bike" do
    station = DockingStation.new
    station.dock(broken_bike)
    expect { station.release_bike }.to raise_error("Can't release broken bike!")
  end

  it "can't dock a bike passed the default capacity" do
    station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { station.dock(working_bike) }
    expect { station.dock(working_bike) }.to raise_error("Docking Station is FULL!")
  end

  it "can have bigger capacity when required" do
    station = DockingStation.new(50)
    station.capacity.times { station.dock(working_bike) }
    expect {station.dock(working_bike) }.to raise_error("Docking Station is FULL!")
  end

end
