class UcoursesController < ApplicationController
  def new
    @ucourse = Ucourse.all
  end

  def index
    @ucourse = Ucourse.all
    if params[:search] && params[:browse]
      @ucourse = Ucourse.both(params[:search],params[:browse]).order("created_at DESC").paginate(:per_page => 5, :page => params[:page])
    elsif params[:search]
      @ucourse = Ucourse.search(params[:search]).order("created_at DESC").paginate(:per_page => 5, :page => params[:page])
    elsif params[:browse]
      @ucourse = Ucourse.subject(params[:browse]).order("created_at DESC").paginate(:per_page => 5, :page => params[:page])
    else
      @ucourse = Ucourse.all.order('created_at DESC').paginate(:per_page => 5, :page => params[:page])
    end


  end

  def enroll
    if params[:id] && params[:name]
      @enrollment = Enrollment.new()
      @enrollment.update_attribute(:user_id, current_user.id)
      @enrollment.update_attribute(:ucourse_id, params[:id])
      @enrollment.update_attribute(:name, params[:name])
      flash[:success] = "Sucessfully Enrolled!"
      redirect_to current_user
    end
  end

end
