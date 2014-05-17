class StaticPagesController < ApplicationController
  #before_action :admin_user, only: [:admin]

  def home
    @blurbs = Blurb.all
  end

  def about
  end

  def contact
    @links = Link.all
  end

  def admin
  end

  def locations
    @stores = Store.all
  end

  def index
    params[:email] ||= 'barnespeter213@gmail.com'
  end

  def sendit
    if UserMailer.email(params).deliver
      flash[:success] = "Your message has been sent"
    else
      flash[:error] = "Something went wrong"
    end
      redirect_to contact_path
  end

  private 
end
