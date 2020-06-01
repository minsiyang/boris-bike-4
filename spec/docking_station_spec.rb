require 'docking_station'

describe DockingStation do
  
  describe "#release_bike" do

    it "doesn't release bike" do
      expect { subject.release_bike }.to raise_error "No bike available"
    end

    it "release a working bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end


  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "show a docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end


end
