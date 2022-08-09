class SignupsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def create
  signup = Signup.create(time: params[:time], camper_id: params[:camper_id], activity_id: params[:activity_id])
  render json: signup, include: :activity, status: :created
  end

  def destroy
    signup = Signup.find(params[:id])
    if signup
      signup.destroy
      head :no_content
    else
      render render_not_found_response
    end

  end

  private

  def render_not_found_response
    render json: { error: "Signup not found" }, status: :not_found
  end  
end