
class DockingStation

	DEFAULT_CAPACITY = 25

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def full?
		@bikes.count == @capacity
	end

	def dock(bike)
		raise 'RuntimeError' if full? || bike.class.to_s != 'Bike'
		@bikes << bike
	end

	def bikes_count
		@bikes.count
	end

	def release(bike)
		raise 'RuntimeError' if @bikes.count == 0
		@bikes.delete(bike)
	end

	def available_bikes
		@bikes.reject {|bike| bike.broken?}
	end

end