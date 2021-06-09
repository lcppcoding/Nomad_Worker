class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @cities = City.all.take(4)
  end

  def my_profile
  end

  def economical
    @city = City.find(params[:city_id])
    @data = @city.data
  end

  def expensive
    @city = City.find(params[:city_id])
    @data = @city.data
  end
end
