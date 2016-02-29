class TwigsController < ApplicationController

before_action :move_to_index, except: :index


  def index
    @twigtweets = Twig.includes(:user).order("created_at DESC")
  end

  def new
  end

  def create
    Twig.create(twigtext: twig_params[:twigtext], user_id: current_user.id)
  end

  def delete
  end

  private
  def twig_params
    params.permit(:twigtext)
  end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end

end
