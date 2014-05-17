class ServicesController < ApplicationController
  before_action :admin_user

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save 
      flash[:success] = "Service created!"
      redirect_to admin_path
    else
      render 'new'
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    
  end

  def destroy
    Service.find(params[:id]).destroy
    flash[:success] = "Service deleted."
    redirect_to admin_path
  end

  def show
    @service = Service.find(params[:id])
  end

  private

    def service_params
      params.require(:service).permit!
    end
end
