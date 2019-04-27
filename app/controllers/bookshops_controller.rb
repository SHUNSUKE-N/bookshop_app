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

  def edit
  end

  def update
    if @shop.update_attributes(shops_params)
      flash[:success] = "店舗の編集に成功しました。"
      redirect_to @shop
    else
      flash[:danger] = "店舗の編集に失敗しました。"
      render 'edit'
    end
  end
  
  def destroy
    @shop.destroy
    flash[:success] = "店舗情報を削除しました。"
    redirect_to root_url
  end

  private

    def booksthop_params
      params.require(:bookshop).permit(
        :name, 
        :phone, 
        :image, 
        :address, 
        :area, 
        :station, 
        :url, 
        :twiiter_url, 
        :google_map_url, 
        :business_hour,
        :holiday,
        :access)
    end

end
