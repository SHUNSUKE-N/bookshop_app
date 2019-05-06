class BookshopsController < ApplicationController

  before_action :find_bookshop, only: [:show, :edit, :update, :destroy]

  def index
    @bookshops = Bookshop.all
  end
  
  def show
    @comments = @bookshop.comments
  end

  def new
    @bookshop = Bookshop.new
  end

  def create
    @bookshop = Bookshop.new(bookshop_params)
    if @bookshop.save
      flash[:success] = "書店の登録に成功しました。"
      redirect_to @bookshop
    else
      flash[:danger] = "書店の登録に失敗しました。"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @bookshop.update_attributes(bookshop_params)
      flash[:success] = "書店情報の編集に成功しました。"
      redirect_to @bookshop
    else
      flash[:danger] = "書店情報の編集に失敗しました。"
      render 'edit'
    end
  end
  
  def destroy
    @bookshop.destroy
    flash[:success] = "書店情報を削除しました。"
    redirect_to root_url
  end

  private

    def bookshop_params
      params.require(:bookshop).permit(
        :name, 
        :phone, 
        :image_data, 
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

    def find_bookshop
      @bookshop = Bookshop.find(params[:id])
    end

end
