# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def contact_mail(firstname, lastname, email, message)
    @firstname = firstname
    @lastname = lastname
    @email = email
    @message = message
    mail to: ENV['personal_mail_address'], subject: "Contact from #{firstname} #{lastname}, Personal page", from: 'contact@amandine.pasin.fr'
  end
end
