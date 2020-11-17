require 'bike'

describe Bike do
  it "return true" do
    bike = Bike.new
    expect(bike.working?).to be true
  end

#   it 'can be reported broken' do
#     subject.report_broken
#     expect(subject).to be_broken
#   end
end

