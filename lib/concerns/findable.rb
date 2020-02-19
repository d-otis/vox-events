module Findable
	def find_by_id(id)
		self.all.detect {|e| e.id == id}
	end

	def find_by_year(year)
		self.all.collect { |e| e if e.start_date_details['year'] == year.to_s }
	end
end