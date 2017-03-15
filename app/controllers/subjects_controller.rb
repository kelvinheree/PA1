class SubjectsController < ApplicationController
  def new
    @subject = Subject.all
  end
end
