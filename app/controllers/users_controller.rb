class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @twigs = current_user.twigs.order("created_at DESC")
  end
end