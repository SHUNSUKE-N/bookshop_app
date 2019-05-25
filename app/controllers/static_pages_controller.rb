class StaticPagesController < ApplicationController
    def home
      @comments = Comment.all
    end
  end
