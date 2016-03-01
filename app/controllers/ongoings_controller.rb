class OngoingsController < ApplicationController

  def index
    @ongoings = Ongoing.includes(:user).order("created_at DESC")
  end

  def new
  end

  def create
    Ongoing.create(projectname: ongoing_params[:projectname], projectslide: ongoing_params[:projectslide], insight: ongoing_params[:insight], user_id: current_user.id, image: ongoing_params[:image], summary: ongoing_params[:summary])
  end

end
