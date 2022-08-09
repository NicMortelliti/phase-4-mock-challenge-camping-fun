class CampersController < ApplicationController
  def index
    campers = Camper.all
    render json: campers, Serializer: CamperSerializer
  end
end
