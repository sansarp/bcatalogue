class ContactusMailer < ActionMailer::Base
   default from: "connect.subash@gmail.com"

  def notify(params)
  	mail(to: 'connect.subash@gmail.com', subject: params[:subject],
  		body: params[:message]
  		)
	end
end
