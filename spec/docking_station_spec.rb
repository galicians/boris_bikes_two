
require 'docking_station'

describe 'docking_station' do
	let(:bike) { Bike.new }
	let(:station) { DockingStation.new(:capacity => 14)}
	
	it "should dock a bike" do
		station.dock(bike)
		expect(station.bikes_count).to eq(1)

	end

	it 'release a bike' do
		station.dock(bike)
		station.release(bike)
		expect(station.bikes_count).to eq(0)
	end

	it 'has a finite capacity' do
		expect(station).to_not be_full
		14.times {station.dock(bike)}
		expect(station).to be_full
	end

	it 'should not accept a bike if full' do

	end


end