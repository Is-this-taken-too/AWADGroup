class MainController < ApplicationController
def donors
	donors = Donors.all
	@donorsRegularTotal = donors.sum(:REGULAR)
	@donorsOtherTotal = donors.sum(:OTHER)
	@donorsTotal = donors.sum(:TOTAL)
	
	
	
end

end
