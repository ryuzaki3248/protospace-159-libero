class PrototypesController < ApplicationController

  def index
  
  end

  def new

    @prototype = Prototype.new

  end

  def create
    Prototype.create(prototype_params)
    redirect_to '/'
  end


  private

  def show
    @prototype = Prototype.find(params[:id])
  end


end
