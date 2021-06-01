class Api::V1::RentalsController < Api::V1::BaseController

  def index
    @rentals = policy_scope(Rental)
    authorize @rentals
  end
end
