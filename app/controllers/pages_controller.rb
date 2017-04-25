class PagesController < ApplicationController
  def home
  end

  def hire_us
  end

  def mail_us
    @inquiry = {
      name: "#{mail_us_params[:name]}",
      email: "#{mail_us_params[:email]}",
      budget: "#{mail_us_params[:budget]}",
      short_intro: "#{mail_us_params[:type_of_work]}"
    }
    ContactUsMailer.thank_you(@inquiry).deliver_later

    redirect_to root_path
  end

  private

  def mail_us_params
    params.require(:mail_us).permit(:name, :email, :budget, :short_intro, :type_of_work => [])
  end
end
