
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
		@bikes << bike
	end
	def bikes_count
		@bikes.count
	end
	def release(bike)
		@bikes.delete(bike)
	end
end