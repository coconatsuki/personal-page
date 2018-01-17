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
end
