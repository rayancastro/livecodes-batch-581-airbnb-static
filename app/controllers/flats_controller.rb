require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]

  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"


  def index
  end

  def show
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end

  private

  def set_flats
    response = open(URL).read
    @flats = JSON.parse(response)
  end
end
