module BikeContainer

	DEFAULT_CAPACITY = 25

	def bikes
		@bikes ||= []
	end
	
	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def full?
		bikes.count == @capacity
	end

	def dock(bike)
		raise "#{self.class.to_s} is full" if full?
		raise "#{self.class.to_s} is not a bike" if bike.class.to_s != 'Bike'
		bikes << bike
	end

	def release(bike)
		raise 'RuntimeError' if @bikes.count == 0
		bikes.delete(bike)
		return bike
	end

	def bikes_count
		bikes.count
	end

	def release(bike)
		raise 'RuntimeError' if @bikes.count == 0
		bikes.delete(bike)
	end

	def available_bikes
		bikes.reject {|bike| bike.broken?}
	end

	def broken_bikes
		bikes.select {|bike| bike.broken?}
	end	

end