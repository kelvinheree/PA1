class InstructorsController < ApplicationController
  def new
    @instructor = Instructor.all
  end
end
