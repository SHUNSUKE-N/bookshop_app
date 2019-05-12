class LikesController < ApplicationController

  def index
    @likes = current_user.likes.all.desc
  end

  def create
    @bookshop = Bookshop.find(params[:bookshop_id])
    @like = current_user.likes.find_by(bookshop: @bookshop)
    toggle
    end

  private

  def toggle
    if @like
      return head :unprocessable_entity unless @like.destroy
    else
      @like = current_user.likes.build(bookshop: @bookshop)
      return head :unprocessable_entity unless @like.save
    end
    head :ok
  end

end