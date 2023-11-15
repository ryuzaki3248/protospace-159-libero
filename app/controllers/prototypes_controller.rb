class PrototypesController < ApplicationController

  def index
  
  end

  def new

    @prototype = Prototype.new

  end

  def create

    
    if current_user.create(user_params)
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit

  end

  def update
    
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept).merge(user_id: current_user.id)
  end


end
