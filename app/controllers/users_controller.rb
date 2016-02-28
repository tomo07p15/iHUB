class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @twigs = Twig.where(user_id: current_user.id).order("created_at DESC")
  end
def