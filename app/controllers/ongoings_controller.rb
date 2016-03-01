class OngoingsController < ApplicationController

  def index
    @ongoings = Ongoing.all
  end

end
