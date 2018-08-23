class Author < ApplicationRecord
	has_many :books




	def name
		"#{self.first_name.split(" ").map{|e| e.capitalize}.join(" ")} #{self.last_name.split(" ").map{|e| e.capitalize}.join(" ")} "
	end
end
