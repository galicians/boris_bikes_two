require_relative 'bike_container'

class Van
	include BikeContainer



	def deliver(station)
		station.broken_bikes.each do |broken_bike|
			dock(station.release(broken_bike))
			station.dock(release(available_bikes.last))
		end
	end

	def pick_up()

end