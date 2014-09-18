
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
		14.times {station.dock(bike)}
		expect(station).to be_full
		expect { station.dock(bike) }.to raise_error(RuntimeError)
	end

	it 'should not accept anything that is not bike' do
		expect{ station.dock(1)}.to raise_error(RuntimeError)
	end

	it 'should not release a bike when empty' do
		expect{ station.release(bike)}.to raise_error(RuntimeError)
	end

	it 'should provide a list of available bikes' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		station.dock(working_bike)
		station.dock(broken_bike)
		expect(station.available_bikes).to eq([working_bike])
	end


end











