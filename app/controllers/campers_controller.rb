class CampersController < ApplicationController
  def index
    campers = Camper.all
    render json: campers, Serializer: CamperSerializer
  end

  def show
    camper = Camper.find(params[:id])
    render json: camper, Serializer: CamperShowSerializer
  end
end
