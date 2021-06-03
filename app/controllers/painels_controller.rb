class PainelsController < ApplicationController

  def index
    @painels = policy_scope(Painel)
    @rentals = Rental.all
    authorize @painels
  end

end
