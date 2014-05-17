class UserMailer < ActionMailer::Base
  default from: "no-reply@gameroomforpresident.com"

  def email(params)
    @params = params
    mail(to: "barnespeter213@gmail.com", subject: "#{@params[:name]} submitted a comment")
  end
end
