class UcoursesController < ApplicationController
  def new
    @ucourse = Ucourse.all
  end

end
