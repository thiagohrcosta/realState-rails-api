class Api::V1::RentalsController < Api::V1::BaseController
  before_action :set_rental, only: [:show]

  def index
    @rentals = policy_scope(Rental)
    authorize @rentals
  end

  def set_rental
    @rental = Rental.find(params[:id])
    authore @rental
  end
end
