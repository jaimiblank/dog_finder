class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dashboard_path, notice: 'Dog profile was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dashboard_path, notice: 'Dog was successfully deleted.'
  end

  def delete_image
    @dog = Dog.find(params[:id])
    @dog.image.purge
    redirect_to edit_dog_path(@dog), notice: 'Image was successfully deleted.'
  end

  def image
    ActionController::Base.helpers.asset_path('dog_image.jpg')
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :bio, :image)
  end



end
