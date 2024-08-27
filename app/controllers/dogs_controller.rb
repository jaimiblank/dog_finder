class DogsController < ApplicationController

  def index
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

end
