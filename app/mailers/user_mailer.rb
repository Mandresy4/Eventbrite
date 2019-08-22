class UserMailer < ApplicationMailer
	default from: 'angeg7360@gmail.com'

	def welcome_email(user)

		@user = user

		@url = 'http://mysite.mg/login'

		mail(to: @user.email, subject: 'Welcome to my site NEGG !!!')
	end

	



end
