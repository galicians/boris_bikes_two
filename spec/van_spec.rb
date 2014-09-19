require 'Van'
require 'Bike'

describe 'Van' do
	let(:van) { Van.new }
	let(:bike) { Bike.new}
	let(:station) { DockingStation.new}

	it "should deliver bikes to a station" do
		van.dock(bike)
		broken_bike = Bike.new
		broken_bike.break!
		station.dock(broken_bike)
		van.deliver(station)
		expect(van.broken_bikes).to eq([broken_bike])
		
	end

end