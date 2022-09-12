class Public::SubjectsController < ApplicationController

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def subject_params
     params.require(:subject).permit(:subject_name)
  end

end
