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
    if contact_params[:firstname].blank? || contact_params[:lastname].blank? || contact_params[:email].blank? || contact_params[:message].blank?
      flash[:warning] = "Please fill all the fields before sending a message."
      redirect_to contact_path
    else
      ContactMailer.contact_mail(contact_params[:firstname], contact_params[:lastname], contact_params[:email], contact_params[:message]).deliver_later
      flash[:notice] = "Message sent!"
      redirect_to contact_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email, :message)
  end
end
