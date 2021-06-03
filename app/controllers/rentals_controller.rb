class RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,  :home, :show]
  before_action :set_rental, except: [:index, :create]

  def index
    @rentals = policy_scope(Rental)
    authorize @rentals
  end

  def show
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

  def edit
    authorize @rental
  end

  def update
    if @rental.update(rentals_params)
      redirect_to painels_path(@painel)
      authorize @rental
    else
      render :new
      authorize @rental
    end
  end

  def destroy
    @rental.destroy
    authorize @rental

    redirect_to painels_path
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
      :photo_three,
      :content
    )
  end

  def set_user
    @user = current_user.id
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end


end
