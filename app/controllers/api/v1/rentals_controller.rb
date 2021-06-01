class Api::V1::RentalsController < Api::V1::BaseController
  before_action :set_rental, only: [:show, :update]

  def index
    @rentals = policy_scope(Rental)
    authorize @rentals
  end

  def update
    if @rental.update(rental_params)
      render :show
    else
      render_error
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:title, :price, :bathroom, :bedroom, :garage, :address_id, :main_photo, :squareft)
  end

  def set_rental
    @rental = Rental.find(params[:id])
    authorize @rental
  end
end
