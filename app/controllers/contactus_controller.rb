class ContactusController < ApplicationController
	def new
		@contactus = Contactu.new
	end

	def create
		ContactusMailer.notify(params[:contactu]).deliver
		redirect_to new_contactu_path, notice: "Thank you !! We will contact you within 1 business day"
	end
end