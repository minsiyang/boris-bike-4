require 'docking_station'

describe DockingStation do
  subject(:station) {DockingStation.new}

  it { is_expected.to respond_to :release_bike }

  it "release a working bike" do
    bike = station.release_bike
    expect(bike).to be_working
  end


end
