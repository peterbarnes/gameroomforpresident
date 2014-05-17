class BlurbsController < ApplicationController
  before_action :admin_user

  def new
    @blurb = Blurb.new
  end

  def create
    @blurb = Blurb.new(blurb_params)
    if @blurb.save
      flash[:success] = "Blurb created"
      redirect_to admin_path
    else
      render 'new'
    end
  end

  def edit
    @blurb = Blurb.find(params[:id])
  end

  def update
    @blurb = Blurb.find(params[:id])
    if @blurb.update_attributes(blurb_params)
      flash[:success] = "Blurb updated"
      redirect_to admin_path
    else
      render 'edit'
    end
  end

  def index
    @blurbs = Blurb.all
  end

  def destroy
    Blurb.find(params[:id]).destroy
    flash[:success] = "Blurb destroyed"
    redirect_to admin_path
  end

  def show
    @blurb = Blurb.find(params[:id])
  end

  private

    def blurb_params
      params.require(:blurb).permit!
    end
end
