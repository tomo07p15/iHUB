class UsersController < ApplicationController
    def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @twigs = user.twigs.order("created_at DESC")
  end
end