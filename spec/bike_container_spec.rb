require 'bike_container'

class ContainerHolder; 
	include BikeContainer;
end


describe 'BikeContainer' do
	let(:bike) { Bike.new }
	let(:holder) {ContainerHolder.new }

	it 'should provide the bikes' do
		expect(holder.bikes).to eq([])
	end

	it 'should provide the capacity' do
		expect(holder.capacity).to eq(25)
	end

	it 'should dock a bike' do
		expect(holder.bikes_count).to eq(0)
		holder.dock(bike)
		expect(holder.bikes_count).to eq(1)
	end

	it 'should release a bike' do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bikes_count).to eq(0)
	end

	it 'should provide the avalaible bikes' do
		holder.dock(bike)
		expect(holder.available_bikes).to eq([bike])
	end

	it 'should provide the broken bikes' do
		broken_bike = Bike.new
		broken_bike.break!
		holder.dock(broken_bike)
		expect(holder.broken_bikes).to eq([broken_bike])
	end

	it 'should release a bike' do
		holder.dock(bike)
		expect(holder.release(bike)).to eq(bike)
	end

end