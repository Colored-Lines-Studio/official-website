class PagesController < ApplicationController
  def home
  end

  def hire_us
  end

  def mail_us
    inquiry = {
      name: mail_us_params[:name],
      email: mail_us_params[:email],
      budget: mail_us_params[:budget],
      type_of_work: mail_us_params[:type_of_work].join(', '),
      short_intro: mail_us_params[:short_intro],
    }

    ContactUsMailer.thank_you(inquiry).deliver_now
    ContactUsMailer.enquiry_notification(inquiry).deliver_now

    redirect_to thank_you_path

  end

  def thank_you

  end

  private

  def mail_us_params
    params.require(:mail_us).permit(:name, :email, :budget, :short_intro, :type_of_work => [])
  end
end
