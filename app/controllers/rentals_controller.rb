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

  def new
    @rental = Rental.new
    authorize @rental
  end

  def create
    set_user
    @rental = Rental.new(rentals_params)
    @rental.user = current_user
    authorize @rental

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

  def set_user
    @user = current_user.id
  end


end
