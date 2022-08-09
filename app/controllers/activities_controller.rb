class ActivitiesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
  def index
    activities = Activity.all
    render json: activities
  end

  def show
    activity = Activity.find(params[:id])
    render json: activity, serializer: CamperShowSerializer
  end

  def destroy
    activity = Activity.find(params[:id])
    if activity
      activity.destroy
      head :no_content
    else
      render render_not_found_response
    end

  end

  private

  def render_not_found_response
    render json: { error: "Activity not found" }, status: :not_found
  end
end
