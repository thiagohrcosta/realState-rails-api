class RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show]

  def show
    @rental = Rental.find(params[:id])
    authorize @rental
  end

  def new
    @rental = Rental.new
  end

end
