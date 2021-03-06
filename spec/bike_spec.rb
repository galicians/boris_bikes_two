require 'bike'

describe 'Bike' do

	it 'should not be broken when created' do
		bike = Bike.new
		expect(bike).not_to be_broken
	end

	it 'should be able to break' do
		bike = Bike.new
		bike.break!
		expect(bike).to be_broken
	end

	it 'should be able to fix' do
		bike = Bike.new
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end
end