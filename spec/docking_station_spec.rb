require 'docking_station.rb'

describe 'DockingStation' do
  it 'can release bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
end
