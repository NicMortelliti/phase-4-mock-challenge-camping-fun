class ActivitiesController < ApplicationController
  def index
    activities = Activity.all
    render json: activities, serializer: ActivitySerializer
  end
end
