class PrototypesController < ApplicationController

  def index
   @prototypes = Prototype.includes(:user)
  end

  def new
    @prototype = Prototype.new
  end

  def create
    prototype = Prototype.create(prototype_params)    
    if prototype.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    prototype = Prototype.find (params[:id])
    prototype.destroy(prototype_params)
    redirect_to root_path
  end

  def edit
    @prototype = Prototype.find (params[:id])

  end

  def update
    prototype = Prototype.find (params[:id])
    prototype.update(prototype_params)
    redirect_to root_path
    
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end


end
