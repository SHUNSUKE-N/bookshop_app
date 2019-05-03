class StaticPagesController < ApplicationController
    def home
     @bookshops = Bookshop.all
    end
  end
