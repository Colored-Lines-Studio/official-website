class ContactUsMailer < ApplicationMailer
  default from: 'contact@coloredlines.studio'

  def thank_you(info)
    mailer_variables(info)
    mail(to: @email, subject: 'Thank You')
  end

  def enquiry_notification(info)
    mailer_variables(info)
    mail to: 'chinedu.daniel@andela.com', subject: "Enquiry from #{@name}"
    mail to: 'amodut@gmail.com', subject: "CLS Enquiry from #{@name}"
    mail to: 'temi@coloredlines.studio', subject: "CLS Enquiry from #{@name}"
    mail to: 'contact@coloredlines.studio', subject: "CLS Enquiry from #{@name}"
  end

  private

  def mailer_variables(info)
    @name ||= info[:name]
    @email  ||= info[:email]
    @budget ||= info[:budget]
    @type_of_work ||= info[:type_of_work]
    @short_intro ||= info[:short_intro]
  end
end
