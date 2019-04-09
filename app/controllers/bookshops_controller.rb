class BookshopsController < ApplicationController
  def edit
  end

  def index
    @bookshops = Bookshop.all
  end
  
  def show
    @bookshop = Bookshop.find(params[:id])
  end

  def new
    @bookshop = Bookshop.new
  end

  def create
    @bookshop = Bookshop.new(bookstore_params)
    if @user.save
      # 保存の成功をここで扱う。
      redirect_to @bookshop
    else
      render 'new'
    end
  end

  private

    def booksthop_params
    end

end
