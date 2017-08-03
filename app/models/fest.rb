class Fest < ActiveRecord::Base

	validates_presence_of :name, :description, :start_date, :end_date

	validate :check_end_date

	private

	def check_end_date

		if (!self.end_date.nil? && !self.start_date.nil?) && self.end_date < self.start_date
			errors.add(:end_date, "Cannot be less than the start date")
		end
	end

end
