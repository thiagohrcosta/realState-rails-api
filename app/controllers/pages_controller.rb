class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @rentals = Rental.all
  end

end
