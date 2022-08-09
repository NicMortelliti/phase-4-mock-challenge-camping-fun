class CampersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    campers = Camper.all
    render json: campers, Serializer: CamperSerializer
  end

  def show
    camper = Camper.find(params[:id])
    render json: camper, Serializer: CamperShowSerializer
  end

  private

  def render_not_found_response
    render json: { error: "Camper not found" }, status: :not_found
  end
end
