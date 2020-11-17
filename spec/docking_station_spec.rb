require 'docking_station'

RSpec.describe DockingStation do

  let(:bike) { instance_double("Bike") }

  it "can release a working bike" do
    station = DockingStation.new
    station.dock(bike)
    expect(bike).to receive(:working?).and_return(true)
    station.release_bike
  end

  it "can't release a bike when the station is empty" do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error("There is no bike available!")
  end

  it "can't dock a bike passed the default capacity" do
    station = DockingStation.new
    20.times { station.dock(bike) }
    expect { station.dock(bike) }.to raise_error("Docking Station is FULL!")
  end

  it "can have bigger capacity when required" do
    station = DockingStation.new(50)
    50.times { station.dock(bike) }
    expect {station.dock(bike) }.to raise_error("Docking Station is FULL!")
  end
  # describe 'initialize' do
  #   let(:bike) { double(:bike) }

  #   it "has a variable capacity" do
  #     station = DockingStation.new(40)
  #     40.times { station.dock(bike) }
  #     expect { station.dock(bike) }.to raise_error "Station is full"    
  #   end
    
  #   it "has defaults capacity" do
  #     described_class::DEFAULT_CAPACITY.times do
  #       subject.dock(bike)
  #     end
  #     expect { subject.dock(bike) }.to raise_error "Station is full"
  #   end
  # end
  
  # describe "#release_bike" do
  # # let(:bike) { double(:bike) }
  #   it "doesn't release bike" do
  #     expect { subject.release_bike }.to raise_error "No bike available"
  #   end

  #   xit "doesn't realease a broken bike" do
  #     bike = Bike.new
  #     bike.report_broken
  #     subject.dock(bike)
  #     expect {subject.release_bike }.to raise_error "No bike available"
  #   end

  #   it "release a working bike" do
  #     bike = double(:bike)
  #     allow(bike).to receive(:working?).and_return true
  #     subject.dock(bike)
  #     release_bike = subject.release_bike
  #     expect(release_bike).to be_working
  #   end
  # end

  # describe "#dock" do
  #   it "docks a bike" do
  #     bike = double(:bike)
  #     expect(subject.dock(bike)).to eq [bike]
  #   end

  #   it "docks a broken bike" do
  #     bike = double(:bike)
  #     allow(bike).to receive(:report_broken).and_return true
  #     bike.report_broken
  #     expect(subject.dock(bike)).to eq [bike]
  #   end

  #   it "raise an error when the station is full" do
  #     subject.capacity.times { subject.dock(double(:bike)) }
  #     expect { subject.dock(double(:bike)) }.to raise_error "Station is full"
  #   end
  # end

  # it "has a default capacity" do
  #   expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  # end
end
