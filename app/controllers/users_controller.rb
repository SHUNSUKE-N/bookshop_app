class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @comments = @user.comments
    @likes = @user.likes.all.desc
  end
end
