class LikesController < ApplicationController
  before_action :set_bookshop, only: :create

  def index
    @likes = current_user.likes.all.desc
  end

  def create
    @like = current_user.likes.find_by(bookshop: @bookshop)
  end

  private

    def set_bookshop
      @bookshop = Bookshop.find(params[:bookshop_id])
    end

end