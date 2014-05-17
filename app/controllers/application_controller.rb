class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :assets

  def assets
    @stores = Store.all
    @blurbs = Blurb.all
    @services = Service.all
    @links = Link.all
  end
end
