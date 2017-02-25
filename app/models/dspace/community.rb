module Dspace
	class Community < ActiveRecord::Base
	  has_many :metadata_values		
		self.table_name = "community"
	end
end