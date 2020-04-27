class ContactMailer < ApplicationMailer
  default :from => "contato@rubiti.com"

  def send_email
    mail(:to => "andersonbrandaolustosa@gmail.com", :subject => "Aí sim hein", :body => "Obrigado")
  end
end

ContactMailer.send_email.deliver