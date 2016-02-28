class TwigsController < ApplicationController


  def index
    @twigtweets = Twig.all
  end

  def new
  end

end
