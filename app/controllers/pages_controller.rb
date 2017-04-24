class PagesController < ApplicationController
  def home
  end

  def hire_us
  end

  def mail_us
    binding.pry
    # TODO: receive form params and mail to email address
  end

  private

  def mail_us_params
    params.require(:mail_us).permit(:name, :email, :budget, :short_intro, :type_of_work => [])
  end
end
