class ContactusMailer < ActionMailer::Base
   default from: "connect.subash@gmail.com"

  def notify(params)
  	mail(to: 'connect.subash@gmail.com', subject: "message from "+ params[:name],
  		body: params[:message]
  		)
	end
end
