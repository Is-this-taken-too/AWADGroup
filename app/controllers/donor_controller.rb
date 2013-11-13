class DonorController < ApplicationController
include ActionView::Helpers::NumberHelper

def index
	@donorsRegularTotal2= Donor.sum(:REGULAR)	
	@donorsRegularTotal = number_to_currency(Donor.sum(:REGULAR))
	@donorsOtherTotal2 = Donor.sum(:OTHER)
	@donorsOtherTotal = number_to_currency(Donor.sum(:OTHER))
	@donorsTotal2 = Donor.sum(:TOTAL)
	@donorsTotal = number_to_currency(Donor.sum(:TOTAL))
	
	@donors = Donor.all
	
	@donors.each do |value|
		@value1 = value.DONOR
		@value2 = ((value.REGULAR/@donorsRegularTotal2) * 100)
	end
	
	
	
	
end
end

