class TwigsController < ApplicationController


  def index
    @twigtweets = Twig.all
  end

  def new
  end

  def create
    Twig.create(twig_params)
  end

  private
  def twig_params
    params.permit(:twigtext)
  end

end
