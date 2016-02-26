class TwigsController < ApplicationController


  def index
    @twigtweets = Twig.all
  end

end
