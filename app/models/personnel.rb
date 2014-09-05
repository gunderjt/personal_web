class Personnel < ActiveRecord::Base

	# Returns the full name of the ibs person
	def full_name
		self.first_name + self.last_name
	end
end
