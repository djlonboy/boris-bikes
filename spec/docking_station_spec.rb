require 'docking_station.rb'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'gets a working bike' do
    subject.dock_bike(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

  it 'docking station can store many bikes' do
    expect(subject.bikes).to eq([])
  end

  it 'can save a docked bike' do
    test_bike = Bike.new
    subject.dock_bike(test_bike)
    expect(subject.bikes).to include(test_bike)
  end

  it 'raises an error if there are no bikes' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error("no bikes")
  end

  it 'raises an error if there are too many bikes' do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike(Bike.new)}
    expect { subject.dock_bike Bike.new }.to raise_error("full")
  end

end
