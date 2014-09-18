require_relative 'bike_container'

class DockingStation

	include BikeContainer

	DEFAULT_CAPACITY = 25

	
	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end


end