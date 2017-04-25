class ContactUsMailer < ApplicationMailer

  default from: 'contact@coloredlines.studio'
  
  def thank_you(info)
   @name = info[:name]
   @email  = info[:email]
   @budget = info[:budget]
   mail(to: @email, subject: 'Thank You')
 end
end
