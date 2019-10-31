require 'docking_station.rb'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it 'gets a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it {is_expected.to respond_to :dock_bike}

  # check if att reader for @bikes returns a result

  it 'has instance variable for storing bikes' do
    expect(subject.bikes).to eq([])
  end

  it 'can save a docked bike' do
    test_bike = Bike.new
    docking_station = DockingStation.new
    docking_station.dock_bike(test_bike)
    expect(docking_station.bikes).to include(test_bike)
  end

end
