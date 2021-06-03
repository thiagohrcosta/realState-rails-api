class RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,  :home, :show]

  def index
    @rentals = policy_scope(Rental)
    authorize @rentals
  end

  def show
    @rental = Rental.find(params[:id])
    authorize @rental
  end

  def create
    @rental = Rental.new(rentals_params)
    if @rental.save
      redirect_to painels_path
    else
      render :new
    end
  end

  private

  def rentals_params
    params.require(:rental).permit(
      :title,
      :price,
      :bathroom,
      :bedroom,
      :garage,
      :address_id,
      :main_photo,
      :squareft,
      :photo_one,
      :photo_two,
      :photo_three
    )
  end


end
