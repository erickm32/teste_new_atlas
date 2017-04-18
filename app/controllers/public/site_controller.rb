class Public::SiteController < ApplicationController

	#respond_to :html
	def index
    puts "aqui1"
		if user_signed_in?
      puts "aqui2"
			if params[:homepage] == nil
				redirect_to dashboard_path
        puts "aqui3"
			end
		end
	end

	def forbidden
    puts "aqui4"
		render :layout => "forbidden"
	end

end
