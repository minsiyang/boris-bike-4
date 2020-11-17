require 'bike'

describe Bike do
  it "return true" do
    bike = Bike.new
    expect(bike.working?).to be true
  end

  it 'can be reported broken' do
    bike = Bike.new
    bike.report_broken
    expect(bike).not_to be_working
  end
end

