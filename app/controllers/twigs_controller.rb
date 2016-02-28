class TwigsController < ApplicationController

before_action :move_to_index, except: :index


  def index
    @twigtweets = Twig.order("created_at DESC")
  end

  def new
  end

  def create
    Twig.create(twig_params)
  end

  def delete
  end

  private
  def twig_params
    params.permit(:user_id, :twigtext)
  end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end

end
