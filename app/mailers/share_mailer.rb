class ShareMailer < ActionMailer::Base
  default from: "andrewajoe@gmail.com"
  default to: "andrewajoe@gmail.com"

  def share_message(message)
    @message = message
    mail(:to => message.to, :from => message.from, :subject => "#{message.subject}")
  end
end
