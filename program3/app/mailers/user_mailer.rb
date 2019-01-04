class UserMailer < ApplicationMailer

	default from:"15653209913@163.com"
	def send_mail(user)
		#params = {}
		# @url = 'http://localhost/login'
		# mail(:subject => 'abcAAAAAAAASDFADSFADSFADSFDASFASDF', 
		# 	 :to => "15653209913@163.com", 
		# 	 :from => '15653209913@163.com', 
		# 	 :date => Time.now
		# 	)
		@user = user
    	mail to: "15653209913@163.com",  subject: "Account activation"
	end
end
