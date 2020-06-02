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

  describe "#dock" do
    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it "raise an error when the station is full" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error "Station is full"
    end
  end

  it "show a docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end


end
