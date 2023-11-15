class PrototypesController < ApplicationController

  def index
  
  end

  def new

    @prototype = Prototype.new

  end

  def create

  end


  def show
    @prototype = Prototype.find(params[:id])
  end

end
