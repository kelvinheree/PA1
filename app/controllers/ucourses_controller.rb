class UcoursesController < ApplicationController
  def new
    @ucourse = Ucourse.all
  end

  def index
    @ucourse = Ucourse.all
    if params[:search]
      @ucourse = Ucourse.search(params[:search]).order("created_at DESC")
    else
      @ucourse = Ucourse.all.order('created_at DESC')
    end
  end

end
