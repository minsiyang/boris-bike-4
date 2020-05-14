require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}
  subject(:bike) {Bike.new}

  it "responds to release_bike method" do
    expect(station).to respond_to(:release_bike)
  end

  it "release working bikes" do
    expect(station.release_bike).to eq(bike)
  end

  it "it is an instance of the bike class" do
    expect(bike).to be_instance_of(Bike)
  end

  it "bike to be working?" do
    expect(bike.working?).to be true
  end

  it "respond to dock method" do
    expect(station).to respond_to(:dock)
  end

  #it "store the bike" do
   # station.dock(bike)
   # expect(park).to eq(bike)
  #end

  it "store the bike" do
    station.dock(bike)
    expect(station.bike).to eq(bike)
  end


end
