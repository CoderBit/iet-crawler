class UsermailerMailer < ApplicationMailer
	 default from: "updates.iet@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome Email')
  end
  def notification_email(user)
    @user = user
    mail(to: @user.email, subject: 'Update Notification')
  end
end
