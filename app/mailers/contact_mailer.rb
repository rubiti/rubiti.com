class ContactMailer < ApplicationMailer
  
  default :from => "contato@rubiti.com"

  layout "mailer"

  def send_email(contact)
    @contact = contact
    mail(:to => "andersonbrandaolustosa@gmail.com", :subject => "Você tem um novo email de rubiti.com")
  end
end