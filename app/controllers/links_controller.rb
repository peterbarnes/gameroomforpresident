class LinksController < ApplicationController
  def index
    
  end

  def edit
    
  end

  def update
    
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:success] = "Link created!"
      redirect_to admin_path
    else
      render 'new'
    end
  end

  def show
    
  end

  def destroy
    
  end

  private

    def link_params
      params.require(:link).permit!
    end
end
