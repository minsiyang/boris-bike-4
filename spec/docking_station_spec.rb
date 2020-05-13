require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}

  it { is_expected.to respond_to(:release_bike) }

  it "it is an instance of the bike class" do
    expect(station.release_bike).to be_instance_of(Bike)
  end
end
