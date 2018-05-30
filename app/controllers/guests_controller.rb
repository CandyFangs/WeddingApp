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
      flash.now[:notice] = "W bazie utworzono nową rzecz do zrobienia"
      redirect_to guests_path
    else
      flash[:error] = "Nie udało się zapisać"
      render :new
    end
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    if @guest.update(guest_params)
      flash[:notice] = "Zmodyfikowano"
      redirect_to guests_path
    else
      flash[:error] = "Nie udało się zapisać zmian"
      render :edit
    end
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    flash[:notice] = "Usunięto"
    redirect_to guests_path
  end

  private

  def guest_params
    params.require(:guest).permit(:id, :name, :plusone, :datename, :confirmation, :side)
  end
end
