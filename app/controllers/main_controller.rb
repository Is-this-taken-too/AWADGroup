class MainController < ApplicationController
def index
	@project = Project.all
	@project.encode!('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
end

end
