class ContactusController < ApplicationController
	def new
		@contactus = Contactu.new
	end

	def create
		# binding.pry
		@contactus = Contactu.new(contactus_params)
		if verify_recaptcha
			ContactusMailer.notify(params[:contactu]).deliver
			redirect_to(new_contactu_path, :notice => "Thank you !! We will contact you within 1 business day")
			# flash[:error] = "Thank you." 
			
		else
			flash[:error] = "There was an error with the recaptcha code below. Please re-enter the code and click submit." 
			# redirect_to new_contactu_path
			render :action => 'new'
		end
	end

	private
	def contactus_params
	  params.require(:contactu).permit(:name, :email, :message)
	end
end