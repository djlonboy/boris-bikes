require 'bike'

describe 'Bike' do
  it 'can check for working bike' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

end
