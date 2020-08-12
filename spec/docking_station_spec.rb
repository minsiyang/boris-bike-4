require 'docking_station'

describe DockingStation do

  describe 'initialize' do
    let(:bike) { double(:bike) }

    it "has a variable capacity" do
      station = DockingStation.new(40)
      40.times { station.dock(:bike) }
      expect { station.dock(:bike) }.to raise_error "Station is full"    
    end
    
    it "has defaults capacity" do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(:bike)
      end
      expect { subject.dock(:bike) }.to raise_error "Station is full"
    end
  end
  
  describe "#release_bike" do

    it "doesn't release bike" do
      expect { subject.release_bike }.to raise_error "No bike available"
    end

    it "doesn't realease a broken bike" do
      bike = double(:bike)
      bike.report_broken
      expect {subject.release_bike }.to raise_error "No bike available"
    end

    it "release a working bike" do
      bike = double(:bike)
      bike.working?
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe "#dock" do
    it "docks a bike" do
      bike = double(:bike)
      expect(subject.dock(bike)).to eq [bike]
    end

    it "docks a broken bike" do
      bike = double(:bike)
      bike.report_broken
      expect(subject.dock(bike)).to eq [bike]
    end

    it "raise an error when the station is full" do
      subject.capacity.times { subject.dock(double(:bike)) }
      expect { subject.dock(double(:bike)) }.to raise_error "Station is full"
    end
  end

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end
