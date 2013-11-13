class Donor < ActiveRecord::Base
	attr_accessible :DONOR, :ABBREV, :REGULAR, :OTHER, :TOTAL
end
