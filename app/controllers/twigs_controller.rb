class TwigsController < ApplicationController

before_action :move_to_index, except: :index


  def index
    @twigtweets = Twig.includes(:user).order("created_at DESC")
    @twigtweet = Twig.new
  end

  def new
  end

  def create
    Twig.create(twigtext: twig_params[:twigtext], user_id: current_user.id)
  end

  def destroy
    twig = Twig.find(params[:id])
    if twig.user_id == current_user.id
        twig.destroy
      end
  end

  def edit
    @twig = Twig.find(params[:id])
  end

  def update
    twig = Twig.find(params[:id])
    if twig.user_id == current_user.id
      twig.update(twig_params)
    end
  end

  def show
    @twig = Twig.find(params[:id])
    @comments = @twig.comments.includes(:user)
    @comment = Comment.new
  end

  private
  def twig_params
    params.require(:twig).permit(:twigtext)
  end



  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end

end
