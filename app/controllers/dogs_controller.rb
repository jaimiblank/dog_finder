class DogsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :bio)
  end

end
