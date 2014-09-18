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

end