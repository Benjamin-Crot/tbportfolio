class ContactsMailer < ApplicationMailer
  default from: "benandtomdev@gmail.com"

  def general_message(contact)
    @contact = contact
    mail(to: "benandtomdev@gmail.com", subject: "Nouveau message du site")
  end
end
