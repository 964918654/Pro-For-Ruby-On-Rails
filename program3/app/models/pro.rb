class Pro < ActiveRecord::Base
	has_many :lists
	paginates_per 2
end
