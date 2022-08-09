class SignupsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

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