class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      flash.now[:notice] = "New guest was added"
      redirect_to guests_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    if @guest.update(guest_params)
      flash[:notice] = "Your guest was modified"
      redirect_to guests_path
    else
      flash[:error] = "Something went wrong"
      render :edit
    end
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    flash[:notice] = "...And your guest is gone."
    redirect_to guests_path
  end

  # protected

  # def set_guest
  #   @guest = Guest.find(params[:id])
  # end

  private

  def guest_params
    params.require(:guest).permit(:id, :name, :plusone, :datename, :confirmation, :side)
  end
end
