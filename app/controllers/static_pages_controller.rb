class StaticPagesController < ApplicationController
  def home
    @page_name = "home"
  end

  def resume
    @page_name = "resume"
  end

  def portfolio
    @page_name = "portfolio"
  end

  def about
    @page_name = "about"
  end

  def contact
    @page_name = "contact"
  end

  def contact_create
    ContactMailer.contact_mail(contact_params[:firstname], contact_params[:lastname], contact_params[:email], contact_params[:message]).deliver_now
    flash[:notice] = "Message sent!"
    redirect_to contact_path
  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email, :message)
  end
end
