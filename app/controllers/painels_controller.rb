class PainelsController < ApplicationController

  def index
    @painels = policy_scope(Painel)
    authorize @painels
  end

end
