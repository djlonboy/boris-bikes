require 'docking_station.rb'

describe 'DockingStation' do
  it 'can release bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'gets a working bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_instance_of(Bike)
    end
  end
  # it 'is of class DockingStation' do
  #   expect(subject).to be_instance_of(DockingStation)
  # end
  #
  # it 'gets a working bike' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end
# end
