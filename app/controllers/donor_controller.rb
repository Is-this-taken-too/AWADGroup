class DonorController < ApplicationController
include ActionView::Helpers::NumberHelper

def index
	@donorsRegularTotal2= Donor.sum(:REGULAR)	
	@donorsRegularTotal = number_to_currency(@donorsRegularTotal2)
	@donorsOtherTotal2 = Donor.sum(:OTHER)
	@donorsOtherTotal = number_to_currency(@donorsOtherTotal2)
	@donorsTotal2 = Donor.sum(:TOTAL)
	@donorsTotal = number_to_currency(@donorsTotal2)
	
	@donors = Donor.all
	
	
	
end
end

