class HomeController < ApplicationController

	skip_before_filter :authenticate_user!
	
	def index
	@url = Url.new	
	end

end	