class OngoingsController < ApplicationController

before_action :move_to_index, except: :index

  def index
    @ongoings = Ongoing.includes(:user).order("created_at DESC")
    @ongoing = Ongoing.new
  end

  def new
  @ongoing = Ongoing.new
  end

  def destroy
    ongoing = Ongoing.find(params[:id])
    if ongoing.user_id == current_user.id
      ongoing.destroy
    end
  end

  def edit
    @ongoing = Ongoing.find(params[:id])
  end

  def update
    ongoing = Ongoing.find(params[:id])
    if ongoing.user_id == current_user.id
      ongoing.update(ongoing_params)
    end
  end

  def show
    @ongoing = Ongoing.find(params[:id])
    @ongoingcomments = @ongoing.ongoingcomments.includes(:user)
  end

  def create
    Ongoing.create(projectname: ongoing_params[:projectname], projectslide: ongoing_params[:projectslide], insight: ongoing_params[:insight], user_id: current_user.id, image: ongoing_params[:image], summary: ongoing_params[:summary])
  end

  private
  def ongoing_params
    params.permit(:projectname, :projectslide, :projectname, :insight, :image, :summary)
  end


  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end


end
