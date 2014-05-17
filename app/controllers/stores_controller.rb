class StoresController < ApplicationController
  before_action :admin_user
  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save 
      flash[:success] = "Store created!"
      redirect_to admin_path
    else
      render 'new'
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.update_attributes(store_params)
      flash[:success] = "Store updated"
      redirect_to admin_path
    else
      render 'edit'
    end
  end

  def destroy
    Store.find(params[:id]).destroy
    flash[:success] = "Store deleted"
    redirect_to admin_path
  end

  def show
    @store = Store.find(params[:id])
  end

  private 

    def store_params
      params.require(:store).permit!
    end
end
