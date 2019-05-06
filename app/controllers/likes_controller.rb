class LikesController < ApplicationController
  before_action :set_bookshop, only: [:create, :destroy]

  def index
    @likes = current_user.likes.all.desc
  end

  def create
    @like = Like.create(user_id: current_user.id, bookshop_id: params[:bookshop_id])
    @likes = Like.where(bookshop_id: params[:bookshop_id])
    @bookshops = Bookshop.all
    end

  def destroy
    like = Like.find_by(user_id: current_user.id, bookshop_id: params[:bookshop_id])
    like.destroy
    @likes = Like.where(bookshop_id: params[:bookshop_id])
    @bookshops = Bookshop.all
  end

  private

end