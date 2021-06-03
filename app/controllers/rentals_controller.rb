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

  # def new
  #   @rental = Rental.new
  # end

end
